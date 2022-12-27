function cat -d "Replaces Cat with Bat if possible"
    if type -q batcat
        command batcat $argv
    else if type -q bat 
        command bat $argv
    else
        command cat $argv
    end
end