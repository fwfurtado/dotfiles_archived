function _ssh-to-https
    set -l given_url (string trim $argv)

    if string match -qr '^https://.*\.git$' $given_url
	string replace '.git' '' $given_url
    else
        echo $given_url | string replace ':' '/' | string replace 'git@' 'https://' | string replace '.git' ''
    end
end
    
