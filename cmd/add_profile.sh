#!/bin/bash
{

add_list_id=b7266f75-b49b-4c90-966c-e39c32f37edb
old_list=$(dconf read /org/gnome/terminal/legacy/profiles:/list | tr -d "]")
new_list="$old_list, '$add_list_id']"
dconf write /org/gnome/terminal/legacy/profiles:/list "$new_list" 
dconf write /org/gnome/terminal/legacy/profiles:/default "'$add_list_id'"

}


