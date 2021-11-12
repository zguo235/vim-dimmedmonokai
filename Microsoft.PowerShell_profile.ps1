$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
Set-PSReadLineOption -EditMode Emacs
# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

function checkpath { $env:Path | sed -e 's/;/\r\n/g' }
function help { Get-Help -Name $args[0] -Online }
function help_less { Get-Help -Name $args[0] | less }
function example { Get-Help -Name $args[0] -Examples | less }
function cdh { Set-Location -Path $HOME }
function wsize { Write-Output $Host.UI.RawUI.WindowSize }
function which { Get-Command $args -All }
function md5sum { Get-FileHash -Path $args -Algorithm MD5 }
function sha512sum { Get-FileHash -Path $args -Algorithm SHA512 }
function psgetsid { C:\Users\zguo\Apps\SysinternalsSuite\PsGetsid64.exe -nobanner $args }
function la { Get-ChildItem -Force $args }
Set-Alias -Name man -Value help_less -O AllScope
# Set-Alias -Name you-get -Value C:\Users\zguo\.pyenv\pyenv-win\versions\3.8.9\Scripts\you-get.exe