# Ensure that Get-ChildItemColor is loaded
Import-Module Get-ChildItemColor

# Set l and ls alias to use the new Get-ChildItemColor cmdlets
Set-Alias l Get-ChildItemColor -Option AllScope
Set-Alias ls Get-ChildItemColorFormatWide -Option AllScope

# Helper function to show Unicode characters
function U
{
    param
    (
        [int] $Code
    )
 
    if ((0 -le $Code) -and ($Code -le 0xFFFF))
    {
        return [char] $Code
    }
 
    if ((0x10000 -le $Code) -and ($Code -le 0x10FFFF))
    {
        return [char]::ConvertFromUtf32($Code)
    }
 
    throw "Invalid character code $Code"
}

# Ensure posh-git is loaded
Import-Module -Name posh-git

# Ensure oh-my-posh is loaded
Import-Module -Name oh-my-posh

# Set the default prompt theme
Set-Theme Paradox

$ThemeSettings.Colors.SessionInfoBackgroundColor = [ConsoleColor]::DarkGray
$ThemeSettings.Colors.PromptBackgroundColor = [ConsoleColor]::DarkCyan
$ThemeSettings.Colors.GitLocalChangesColor = [ConsoleColor]::Yellow
$ThemeSettings.Colors.AdminIconForegroundColor = [ConsoleColor]::Yellow