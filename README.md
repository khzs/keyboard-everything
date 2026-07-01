# keyboard-everything

|         | linre | dotfiles-core | keyboard-everything |
|---------|-------|---------------|---------------------|
| Linux   | ## -> | ------------> | ##                  |
| MacOS   | -     | ## ---------> | ##                  |
| Windows | -     | -             | ##                  |


## instructions on Windows

```
curl.exe -fsSL https://raw.githubusercontent.com/khzs/keyboard-everything/main/all.ahk -o "$HOME\Documents\_\all.ahk"

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\all.lnk")
$Shortcut.TargetPath = "$HOME\Documents\_\all.ahk"
$Shortcut.Save()
```
