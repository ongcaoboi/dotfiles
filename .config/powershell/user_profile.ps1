[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git
Import-Module oh-my-posh
# Set-PoshPrompt Paradox  
# Set-PoshPrompt takuya
 $omp_config = Join-Path $PSScriptRoot ".\junha.omp.json"
 oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# Load prompt config
# function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias

Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Alias dotnet 
Function dr { dotnet run }
Set-Alias d dotnet

# Alias function
Function b { cd .. }
Function touch{ New-Item -Path . -Name $args[0] }


# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
