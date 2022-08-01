function clone -d "Clone a directory using Git"
    if string match -q "https://" $argv[1] or not (type -q gh)
        command git clone $argv
    else
        command gh repo clone $argv[1] -- $argv[2..-1]
    end
end
