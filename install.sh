# #!/usr/bin/env bash

local OH_MY_ZSH_PLUGINS=$HOME/.oh-my-zsh/plugins
local current_timestamp=$(date "+%Y%m%d-%H%M%S")
local TEMP_DIR="${HOME}/.tmp-${current_timestamp}"
local TERRAGRUNT_PLUGIN_DIR="${TEMP_DIR}/terragrunt-plugin"

echo "
 .d88888b.  888    888      888b     d888 Y88b   d88P      8888888888P  .d8888b.  888    888                        
d88P" "Y88b 888    888      8888b   d8888  Y88b d88P             d88P  d88P  Y88b 888    888                        
888     888 888    888      88888b.d88888   Y88o88P             d88P   Y88b.      888    888                        
888     888 8888888888      888Y88888P888    Y888P             d88P     "Y888b.   8888888888                        
888     888 888    888      888 Y888P 888     888             d88P         "Y88b. 888    888                        
888     888 888    888      888  Y8P  888     888            d88P            "888 888    888                        
Y88b. .d88P 888    888      888   "   888     888           d88P       Y88b  d88P 888    888                        
 "Y88888P"  888    888      888       888     888          d8888888888  "Y8888P"  888    888                        
                                                                                                                    
                                                                                                                    
                                                                                                                    
88888888888 8888888888 8888888b.  8888888b.         d8888  .d8888b.  8888888b.  888     888 888b    888 88888888888 
    888     888        888   Y88b 888   Y88b       d88888 d88P  Y88b 888   Y88b 888     888 8888b   888     888     
    888     888        888    888 888    888      d88P888 888    888 888    888 888     888 88888b  888     888     
    888     8888888    888   d88P 888   d88P     d88P 888 888        888   d88P 888     888 888Y88b 888     888     
    888     888        8888888P"  8888888P"     d88P  888 888  88888 8888888P"  888     888 888 Y88b888     888     
    888     888        888 T88b   888 T88b     d88P   888 888    888 888 T88b   888     888 888  Y88888     888     
    888     888        888  T88b  888  T88b   d8888888888 Y88b  d88P 888  T88b  Y88b. .d88P 888   Y8888     888     
    888     8888888888 888   T88b 888   T88b d88P     888  "Y8888P88 888   T88b  "Y88888P"  888    Y888     888     
                                                                                                                    
                                                                                                                    
"
echo "Developed and maintained by "$(tput bold)"Kaustav Chakraborty (https://github.com/phoenixTW)\n\n\n"$(tput sgr 0)

if [ -f /usr/bin/git ]; then
    mkdir -p "${TEMP_DIR}"
    git clone https://github.com/phoenixTW/omz-terragrunt-plugin.git "${TERRAGRUNT_PLUGIN_DIR}"
    cp -r "${TERRAGRUNT_PLUGIN_DIR}/terragrunt" "${OH_MY_ZSH_PLUGINS}"
    rm -rf "${TEMP_DIR}"
    echo $(tput setaf 2)$(tput bold)"terragrunt plugin installed successfully"$(tput sgr 0)
else
    echo $(tput setaf 1)"\ngit not found!\n"
fi
