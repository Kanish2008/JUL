# PowerShell script to remove .jpg from all image src paths in Hem.html

$file = "c:\Users\Kanis\Downloads\innenfor\nettside\Hem.html"
$content = Get-Content $file -Raw -Encoding UTF8

# Replace all .jpg extensions in bilder/ paths
$content = $content -replace "bilder/BILDE (\d+)\.jpg", "bilder/BILDE `$1"

# Save the file
$content | Set-Content $file -Encoding UTF8 -NoNewline

Write-Host "Ferdig! Alle .jpg-endelser er fjernet fra bildestiene." -ForegroundColor Green
