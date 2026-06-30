# opencode-config

个人 OpenCode 配置文件仓库。

## 目录结构

```text
├── instructions/              # 行为指令（语言规则、词汇表）
├── skills/                    # 自定义技能
├── opencode.json              # 主配置（MCP、提供商、插件）
├── oh-my-opencode-slim.json   # Agent 模型配置
├── tui.json                   # TUI 配置
├── setup-env.ps1              # 环境变量配置脚本
└── .gitignore
```

## 使用方式

1. 克隆仓库到 OpenCode 配置目录
2. 编辑 `setup-env.ps1` 填入 API Key
3. PowerShell 中运行 `.\setup-env.ps1` 配置环境变量

## 许可

MIT
