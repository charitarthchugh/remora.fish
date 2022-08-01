#  Auto NVM settings 
if status is-interactive

    test -z $auto_nvm_enable
    and set -g auto_nvm_enable true
end

function auto_nvm --on-variable PWD -d "Automatic activation of node version defined in .nvmrc in the current directory"
    # Check if enabled 
    # if it is not it will return
    test ! $auto_nvm_enable
    or not status is-interactive
    and returnz
    # Find 
    if test -e .nvmrc && type -q nvm
        nvm install
    end
end
