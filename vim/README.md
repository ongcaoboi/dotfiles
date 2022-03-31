Các bước cấu hình cho neovim

1: Tải neovim về
	- Tải cả git, nodejs, java, ..
	Cài lệnh:
		npm install neovim -g
	- Tạo thư mục nvim trong user/AppData/Local
	dùng lệnh :checkhealth để kiểm tra sức khỏe cho neovim

2: Cài đặt plug-install cho neo vim
	mở pwsh gõ:
	iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

3: Install yarn and coc.vim
	
	
