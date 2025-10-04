function clone -d "Clone a directory using Git"
    set -l target $argv[1]

    # Prefer gh when:
    # - target is in username/repo-name format (contains exactly one slash and no scheme)
    # - or target starts with https://github.com
    # Fallback to git otherwise.
    if type -q gh
        if string match -q -- 'https://github.com/*' $target
            command gh repo clone $target -- $argv[2..-1]
            return
        end
        if string match -rq -- '^[^/]+/[^/]+$' -- $target
            command gh repo clone $target -- $argv[2..-1]
            return
        end
    end

    command git clone $argv
end
