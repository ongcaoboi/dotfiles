*  (NerdFonts) - A Powerline-patched font

	https://github.com/ryanoasis/nerd-fonts/releases
		Download Hack.zip and install font
	Download PowerShell in Store and seleted it on default
	Select one dark theme and change backgroud at #001B26
	
* Scoop - A Command-line install

	Open PowerShell and execute:
		iwr -useb get.scoop.sh | iex
		scoop install curl sudo jq
		curl 'https://api.inkdrop.app/' | jq .
	Install Git for Windows
		winget install -e --id Git.Git
	Install Neovim
		scoop install neovim gcc 
	Make a user profile and set command aliases
		This C:\User\{username}\
		mkdir .config/powershell
		nvim .config/powershell/user_profile.ps1
			write:
			# Alias
			Set-Alias vim nvim
			Set-Alias ll ls
			Set-Alias g git
			Set-Alias grep findstr
			Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
			Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
		nvim $PROFILE.CurrentUserCurrentHost
			write:
			. $env:USERPROFILE\.config\powershell\user_profile.ps1
		

* Oh My Posh - Prompt theme engine
	in powershell 
	Install-Module posh-git -Scope CurrentUser -Force
	Install-Module oh-my-posh -Scope CurrentUser -Force
	Customize prompt (Path and git)
		https://github.com/craftzdog/dotfiles-public/blob/master/.config/powershell/takuya.omp.json
		https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json
		oh-my-posh --init --shell pwsh --config .\junha.omp.json | Invoke-Expression
	Install Terminal Icons
		Install-Module -Name Terminal-Icons -Repository PSGallery -Force


* PSReadline - Cmdlets for customizing the editing enviroment, user for autocomplate
	Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

* Z - Directory jumper
	Install-Module -Name z -Force
	
	z desk
	z
	z powershell

* Fxf, PSFzf - Fuzzy finder
	
	

