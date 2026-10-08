# 이 폴더의 변경된 파일(새 html 포함)을 전부 커밋하고 GitHub Pages로 배포합니다.
# 사용: 폴더에서 우클릭 > PowerShell 열기 > .\deploy.ps1
Set-Location $PSScriptRoot
git add -A
$msg = "deploy " + (Get-Date -Format "yyyy.MM.dd HH:mm")
git commit -m $msg
git push
Write-Host ""
Write-Host "배포 완료. 1~2분 후 반영됩니다:"
Write-Host "  https://01sdev.github.io/nabi_lec/"
