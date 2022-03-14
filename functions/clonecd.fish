function clonecd -d "Uses git to clone a directory and cd into it"
    clone $argv && cd (basename $argv[1] .git)
end
