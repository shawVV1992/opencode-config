# ============================================================
# OpenCode 环境变量配置脚本   OpenCode environment setup script
# 运行方式：PowerShell 中执行 .\setup-env.ps1
# Usage: Run .\setup-env.ps1 in PowerShell
# ============================================================

# 在此修改以下三个变量的值（替换占位符文本）
# Edit the values below (replace placeholder text)

$githubToken    = "在此填入你的 GitHub Personal Access Token"
$bailianApiKey  = "在此填入你的百炼 API Key"
$deepseekApiKey = "在此填入你的 DeepSeek API Key"

# ============================================================
# 以下无需修改   Do not edit below
# ============================================================

$vars = @{
    GITHUB_TOKEN      = $githubToken
    BAILIAN_API_KEY   = $bailianApiKey
    DEEPSEEK_API_KEY  = $deepseekApiKey
}

foreach ($name in $vars.Keys) {
    $value = $vars[$name]
    if ($value -and $value -notmatch "^在此填入") {
        [Environment]::SetEnvironmentVariable($name, $value, "User")
        Set-Item -Path "env:$name" -Value $value
        Write-Host "[OK] ${name} 已设置" -ForegroundColor Green
    } else {
        Write-Host "[跳过] ${name} 未填入有效值" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "环境变量配置完成。新终端窗口将自动加载。" -ForegroundColor Cyan
Write-Host "Environment variables configured. New terminal windows will auto-load." -ForegroundColor Cyan
