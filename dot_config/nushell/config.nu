# Configure nu
$env.EDITOR = "nvim"
$env.VISUAL = "neovide"
$env.config.edit_mode = 'vi'
$env.config.show_banner = false

# Program aliases
alias gdb = cgdb

# Program init config
source ~/.config/nushell/plugin.nu
source ~/.zoxide.nu
def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}
