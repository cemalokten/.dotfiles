if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx fish_prompt_pwd_dir_length 0
set -g theme_display_group no
set -g theme_display_hostname no
set -g theme_color_user aa55ff
set -g theme_display_rw no

set theme_primary                                   1eb980
set theme_secondary                                 ffcf44
set theme_primary_variant                           045d56
set theme_secondary_variant                         ff6859
set theme_hilight                                   b15dff

set -g theme_color_user                             $theme_hilight
set -g theme_color_host                             $theme_primary_variant
set -g theme_color_separator                        brblack
set -g theme_color_normal                           normal
set -g theme_color_time                             $theme_secondary_variant
set -g theme_color_path                             $theme_primary
set -g theme_color_prompt                           $theme_secondary_variant
set -g theme_color_virtualenv                       $theme_secondary
set -g theme_color_status_prefix                    $theme_hilight
set -g theme_color_status_jobs                      $theme_primary
set -g theme_color_status_rw                        $theme_primary
set -g theme_display_group                          no
set -g theme_prompt_segment_separator_color         $theme_primary
set -g theme_prompt_userhost_separator              '.'
set -g __fish_git_prompt_char_branch_begin          '['
set -g __fish_git_prompt_char_branch_end            ']'
set -g __fish_git_prompt_color_branch_begin         brblack
set -g __fish_git_prompt_color_branch_end           brblack
set -g __fish_git_prompt_color_branch               $theme_secondary
set -g __fish_git_prompt_char_stateseparator       ' '
set -g __fish_git_prompt_showcolorhints            yes
set -g __fish_git_prompt_show_informative_status   yes

set -g __fish_git_prompt_char_branch_begin         ''
set -g __fish_git_prompt_char_branch_end           ''
