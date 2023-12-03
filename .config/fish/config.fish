if status is-interactive
    # Commands to run in interactive sessions can go here
    set __fish_git_prompt_color white
    set __fish_git_prompt_color_branch magenta
    set __fish_git_prompt_showdirtystate 'yes'
    set __fish_git_prompt_showstashstate 'yes'
    set __fish_git_prompt_showuntrackedfiles 'yes'
    set __fish_git_prompt_showupstream 'yes'
    set __fish_git_prompt_show_informative_status 'yes'
    set __fish_git_prompt_showcolorhints 'yes'
    eval (/Users/uenot/.homebrew/bin/brew shellenv)
end
