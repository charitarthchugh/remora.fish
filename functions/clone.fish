function clone -d "Clone a directory using Git"
    if string match -q "https://" $argv[1]
        command git clone $argv[1]
    else
        gh repo clone $argv[1] -- $argv[2..-1]
    end
end
