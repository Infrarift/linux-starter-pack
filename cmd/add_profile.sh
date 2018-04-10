
{
    dconfdir=/org/gnome/terminal/legacy/profiles:
    echo "Hello World"
    profile_ids=($(dconf list $dconfdir/ | grep ^: |\
                        sed 's/\///g' | sed 's/://g'))
    profile_name="Krin"
    echo "Hello World"
    profile_ids_old="$(dconf read "$dconfdir"/list | tr -d "]")"
    profile_id="b7266f75-b49b-4c90-966c-e39c32f37edb"

    [ -z "$profile_ids_old" ] && local lb="["  # if there's no `list` key
    [ ${#profile_ids[@]} -gt 0 ] && local delimiter=,  # if the list is empty
    dconf write $dconfdir/list \
        "${profile_ids_old}${delimiter} '$profile_id']"
    dconf write "$dconfdir/:$profile_id"/visible-name "'$profile_name'"
    echo $profile_id
}

