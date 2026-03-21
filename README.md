# Dotfiles (managed by chezmoi)

## 核心概念

chezmoi 将 dotfiles 管理分为两个状态：

- **Source state** — 仓库中的文件（`~/.local/share/chezmoi/`），是"期望状态"的声明
- **Target state** — 实际的 home 目录（`~/`），是最终生效的文件

chezmoi 通过文件名前缀约定来映射两者的关系：

| Source 文件名 | Target 路径 |
|---|---|
| `dot_zshrc` | `~/.zshrc` |
| `dot_config/private_foo` | `~/.config/foo` |
| `dot_zshrc.tmpl` | `~/.zshrc`（经模板渲染） |

常见前缀：`dot_` = `.`、`private_` = 权限 0600、`executable_` = 权限 0755。`.tmpl` 后缀表示该文件是 Go 模板，应用时会先渲染。

## 常用命令

```bash
chezmoi add ~/.zshrc          # 将文件纳入管理（复制到 source）
chezmoi edit ~/.zshrc         # 编辑 source 中的对应文件
chezmoi diff                  # 查看 source 与 target 的差异
chezmoi apply                 # 将 source 应用到 target（覆盖）
chezmoi cd                    # 进入 source 目录（方便 git 操作）
chezmoi update                # git pull + apply（在新机器上同步）
```

初始化新机器：

```bash
chezmoi init https://github.com/<user>/dotfiles.git
chezmoi apply
```

## 模板与多机器配置

### chezmoi.toml

`~/.config/chezmoi/chezmoi.toml` 是每台机器的**本地配置**，不提交到仓库。通过 `[data]` 段定义模板变量：

```toml
# 家用机器
[data]
  name  = "Bach"
  email = "bach@example.com"
  work  = false
```

```toml
# 公司机器
[data]
  name  = "Bach"
  email = "bach@corp.com"
  work  = true
```

### 在 .tmpl 文件中使用变量

模板使用 Go template 语法。以 `.zshrc.tmpl` 为例，根据 `work` 变量条件生成不同配置：

```
# 仅家用机器启用代理
{{- if not .work }}
export https_proxy=http://127.0.0.1:7890
{{- end }}
```

常用模板语法：

```
{{ .chezmoi.hostname }}       # 内置变量：主机名
{{ .chezmoi.os }}             # 内置变量：操作系统 (darwin/linux)
{{ .name }}                   # 自定义变量（来自 chezmoi.toml）
{{- if eq .chezmoi.os "darwin" }}
  # macOS 专用配置
{{- end }}
```

### 调试模板

```bash
chezmoi data                  # 查看所有可用的模板变量
chezmoi cat ~/.zshrc          # 查看渲染后的最终内容（不写入）
chezmoi diff                  # 对比渲染结果与当前 target
```

## 本仓库结构

```
.
├── dot_zshrc.tmpl    # zsh 配置（模板，按 work 变量条件渲染）
└── dot_p10k.zsh      # Powerlevel10k 主题配置（所有机器共用）
```
