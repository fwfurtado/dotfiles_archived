set -x color0 "{color1}"
set -x color2 "{color2}"
set -x color3 "{color3}"
set -x color4 "{color4}"
set -x color5 "{color5}"
set -x color6 "{color6}"
set -x color7 "{color7}"
set -x color8 "{color8}"
set -x color9 "{color9}"
set -x color10 "{color10}"
set -x color11 "{color11}"
set -x color12 "{color12}"
set -x color13 "{color13}"
set -x color14 "{color14}"
set -x color15 "{color15}"

set -x background "{background}"
set -x foreground "{foreground}"

set fish_color_normal {foreground.strip}
set fish_color_command {color2.strip}
set fish_color_param {color4.strip} --bold
set fish_color_redirection $fish_color_param
set fish_color_comment {color8.strip}
set fish_color_error ff0000
set fish_color_escape {color5.strip}
set fish_color_operator $fish_color_escape
set fish_color_end {color4.strip}
set fish_color_quote {color6.strip}
set fish_color_autosuggestion {color6.strip} {background.strip}
set fish_color_user {color1.strip}
set fish_color_host $fish_color_normal
set fish_color_valid_path --underline
set fish_color_cwd {foreground.strip}
set fish_color_cwd_root {foreground.strip} --bold
set fish_color_match --background=brblue
set fish_color_search_match {color7.strip} --background={background.strip}
set fish_color_selection {color15.strip} --bold --background={background.strip} 
set fish_color_cancel -r
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_completion
set fish_pager_color_description $fish_color_quote {color7.strip} 
set fish_color_history_current --bold
