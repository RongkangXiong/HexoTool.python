Set WshShell = WScript.CreateObject("WScript.Shell")
targetfolder = createobject("Scripting.FileSystemObject").GetFile(Wscript.ScriptFullName).ParentFolder.Path
targetfile = targetfolder+"\hexoblog.vbs"

strDesktop = WshShell.SpecialFolders("Desktop") :'特殊文件夹“桌面”
set oShellLink = WshShell.CreateShortcut(strDesktop & "\HexoBlogTools.lnk")
oShellLink.TargetPath = targetfile : '目标
oShellLink.WindowStyle = 3 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.Hotkey = "Ctrl+Alt+H" : '快捷键
oShellLink.IconLocation = targetfolder+"\img\logo.ico" : '图标
oShellLink.Description = "HexoBlotTools" : '备注
oShellLink.WorkingDirectory = targetfolder : '起始位置
oShellLink.Save : '创建保存快捷方式

Wscript.echo "HexoBlogTools桌面快捷方式创建成功"