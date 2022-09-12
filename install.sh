# #!/usr/bin/env bash

OH_MY_ZSH_PLUGINS=$HOME/.oh-my-zsh/plugins
local current_timestamp=$(date "+%Y%m%d-%H%M%S")
local TEMP_DIR="${HOME}/.tmp-${current_timestamp}"
local TERRAGRUNT_PLUGIN_DIR="${TEMP_DIR}/terragrunt-plugin"

echo "
 __                       __  __                
/  \ |__|     |\/| \ /     / /__` |__|          
\__/ |  |     |  |  |     /_ .__/ |  |          
                                                
___  ___  __   __        __   __            ___ 
 |  |__  |__) |__)  /\  / _` |__) |  | |\ |  |  
 |  |___ |  \ |  \ /~~\ \__> |  \ \__/ | \|  |  
                                                
"
echo "Developed and maintained by "$(tput bold)"Kaustav Chakraborty (https://github.com/phoenixTW)"$(tput sgr 0)

if [ -f /usr/bin/git ]; then
    mkdir -p "${TEMP_DIR}"
    git clone https://github.com/phoenixTW/omz-terragrunt-plugin.git "${TERRAGRUNT_PLUGIN_DIR}"
    cp -r "${TERRAGRUNT_PLUGIN_DIR}/terragrunt" "${OH_MY_ZSH_PLUGINS}"
    rm -rf "${TEMP_DIR}"
    echo $(tput setaf 2)$(tput bold)"terragrunt plugin installed successfully"$(tput sgr 0)
else
    echo $(tput setaf 1)"\ngit not found!\n"
fi
