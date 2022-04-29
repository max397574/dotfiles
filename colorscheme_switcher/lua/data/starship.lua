local colors = require("colors").get(vim.g.colors_name or require("ignis.utils").get_colorscheme())
return {
    [=[right_format = """$battery$time"""]=],
    [=[# Prompt: param 2 └─]=],
    [=[]=],
    [=[[character]]=],
    [=[success_symbol = " [ ](]=] .. colors.purple .. [=[)"]=],
    [=[error_symbol = " [ ](]=] .. colors.red .. [=[)"]=],
    [=[vicmd_symbol = "[  ](]=] .. colors.green .. [=[)"]=],
    [=[]=],
    [=[# Username]=],
    [=[[username]]=],
    [=[style_user = "dimmed blue"]=],
    [=[]=],
    [=[[hostname]]=],
    [=[ssh_only = false]=],
    [=[format = "<[$hostname]($style)>"]=],
    [=[trim_at = "-"]=],
    [=[style = "dimmed white"]=],
    [=[disabled = true]=],
    [=[]=],
    [=[[battery]]=],
    [=[full_symbol = ""]=],
    [=[charging_symbol = ""]=],
    [=[discharging_symbol = ""]=],
    [=[unknown_symbol = ""]=],
    [=[disabled = false]=],
    string.format(
        [=[format = "[ ](fg:%s bg:%s)[$symbol ](fg:%s bg:%s)[ ](fg:%s bg:%s)[$percentage]($style)[ ](fg:%s bg:%s)"]=],
        colors.red,
        "none",
        colors.black,
        colors.red,
        colors.red,
        colors.baby_pink,
        colors.baby_pink,
        "none"
    ),

    [=[[[battery.display]]]=],
    [[style = "fg:]] .. colors.black .. [[ bg:]] .. colors.baby_pink .. '"',
    [[threshold=100]],
    [=[]=],
    [=[# Last param in the first line/row]=],
    [=[[cmd_duration]]=],
    [=[min_time = 1]=],
    string.format(
        [=[format = "[ ](fg:%s bg:%s)[ ](fg:%s bg:%s)[](fg:%s bg:%s)[$duration]($style)[](fg:%s bg:%s)"]=],
        colors.dark_purple,
        "none",
        colors.black,
        colors.dark_purple,
        colors.dark_purple,
        colors.purple,
        colors.purple,
        "none"
    ),
    [=[disabled = false]=],
    [[style = "fg:]] .. colors.black .. [[ bg:]] .. colors.purple .. '"',
    [=[]=],
    [=[# Third param]=],
    [=[[directory]]=],
    string.format(
        [=[format = "[](fg:%s bg:%s)[ ](fg:%s bg:%s)[](fg:%s bg:%s)[ $path]($style)[](fg:%s bg:%s) "]=],
        colors.orange,
        "none",
        colors.black,
        colors.orange,
        colors.orange,
        colors.yellow,
        colors.yellow,
        "none"
    ),
    string.format([[style = "fg:%s bg:%s"]], colors.black, colors.yellow),
    [=[truncation_length = 3]=],
    [[truncate_to_repo=false]],
    [=[]=],
    [=[[git_branch]]=],
    string.format(
        [=[format = "[](fg:%s bg:%s)[](fg:%s bg:%s)[](fg:%s bg:%s)[ $branch]($style)[](fg:%s bg:%s) "]=],
        colors.dark_green,
        "none",
        colors.black,
        colors.dark_green,
        colors.dark_green,
        colors.green,
        colors.green,
        "none"
    ),
    string.format([[style = "fg:%s bg:%s"]], colors.black, colors.green),
    [=[]=],
    [=[[git_commit]]=],
    [=[format = "[\\($hash\\)]($style) [\\($tag\\)]($style)"]=],
    [=[style = "green"]=],
    [=[]=],
    [=[[git_status]]=],
    -- [=[format ='([\[$all_status$ahead_behind\]]($style))']=],
    string.format(
        [=[format="[](fg:%s bg:%s)[ ](fg:%s bg:%s)[ ](fg:%s bg:%s)[$modified](fg:%s bg:%s)[$untracked](fg:%s bg:%s)[$staged](fg:%s bg:%s)[$renamed](fg:%s bg:%s)[$ahead_behind](fg:%s bg:%s)[](fg:%s bg:%s)"]=],
        colors.dark_blue,
        "none",
        colors.black,
        colors.dark_blue,
        colors.dark_blue,
        colors.blue,
        colors.black,
        colors.blue,
        colors.black,
        colors.blue,
        colors.black,
        colors.blue,
        colors.black,
        colors.blue,
        colors.black,
        colors.blue,
        colors.blue,
        "none"
    ),
    [=[conflicted = "="]=],
    [=[ahead =	"⇡${count} "]=],
    [=[behind = "⇣${count} "]=],
    [=[diverged = "⇕⇡${ahead_count}⇣${behind_count}"]=],
    [=[untracked = "?${count} "]=],
    [=[modified = "!${count} "]=],
    [=[staged = "+${count} "]=],
    [=[renamed = "»${count} "]=],
    [=[deleted = "✘${count} "]=],
    [=[style =	"red"]=],
    [=[disabled = false]=],
    [=[]=],
    [=[[git_state]]=],
    [=[rebase = "REBASING"]=],
    [=[merge =	"MERGING"]=],
    [=[revert = "REVERTING"]=],
    [=[cherry_pick = "CHERRY-PICKING"]=],
    [=[bisect = "BISECTING"]=],
    [=[am = "AM"]=],
    [=[am_or_rebase = "AM/REBASE"]=],
    [=[style =	"yellow"]=],
    [=[format = '\([$state( $progress_current/$progress_total)]($style)\) ']=],
    [=[disabled = false]=],
    [=[]=],
    [=[[hg_branch]]=],
    [=[symbol = ""]=],
    [=[style = "purple"]=],
    [=[format = "on [$symbol$branch]($style) "]=],
    [=[]=],
    [=[[time]]=],
    string.format([[style="fg:%s bg:%s"]], colors.black, colors.blue),
    'format="' .. string.format(
        [=[[](fg:%s bg:%s)[ ](fg:%s bg:%s)[](fg:%s bg:%s)[ $time]($style)[](fg:%s bg:%s)]=],
        colors.dark_blue,
        "none",
        colors.black,
        colors.dark_blue,
        colors.dark_blue,
        colors.blue,
        colors.blue,
        "none"
    ) .. '"',
    [=[time_format = "%R"]=],
    [=[disabled = false]=],
    [=[]=],
    [=[[docker_context]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[c]]=],
    [=[disabled=true]=],
    [=[]=],
    [=[[conda]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[dart]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[package]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[perl]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[php]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[]=],
    [=[[ruby]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[java]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[[lua]]=],
    [=[disabled=true]=],
    [=[symbol = " "]=],
    [=[style = "bold blue"]=],
    [=[]=],
    [=[[nodejs]]=],
    [=[disabled=true]=],
    [=[]=],
    [=[[swift]]=],
    [=[disabled=true]=],
    [=[symbol = "ﯣ "]=],
    [=[]=],
    [=[[julia]]=],
    [=[disabled=true]=],
    [=[format = "[$symbol$version]($style) "]=],
    [=[symbol = "ஃ "]=],
    [=[style = "bold green"]=],
    [=[]=],
    [=[[python]]=],
    [=[disabled=true]=],
    [=[format = 'via [${symbol}${pyenv_prefix}${version}( $virtualenv)]($style) ']=],
    [=[symbol = " "]=],
    [=[style = "italic Blue"]=],
    [=[]=],
    [=[[rust]]=],
    [=[disabled=true]=],
    [=[format = "[$symbol$version]($style) "]=],
    [=[# style = "bold green"]=],
    [=[symbol = " "]=],
    [=[]=],
    [=[# Prompt: optional param 1]=],
}