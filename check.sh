#! /bin/bash

set -e
# set -x

check_file() {
    local target_file=$1
    local target_base_dir="$(dirname -- $target_file)/"
    mkdir -p $target_base_dir
    if [[ -f "${target_file}" ]]; then
        echo "Exist (try git diff): ${target_file}"
        cp ${target_file} ./
    else
        local local_file=./"${target_file##*/}"
        echo "Touch ${local_file} TO ${target_file}"
        cp ${local_file} ${target_file}
    fi
}

check_plugin_git() {
    local target_git=$1
    local target_git_owner=$2
    if [[ -d ${target_git} ]]; then
        local git_url=$(cd ${target_git} && git remote get-url origin)
        echo "Exist: ${target_git} From ${git_url}"
    else
        local target_base_dir="$(dirname -- $target_git)/"
        mkdir -p $target_base_dir
        cd $target_base_dir && git clone https://github.com/${target_git_owner}/${target_git}.git
    fi
}

# ~/.ipython/profile_default/startup/normal_env.ipy
check_file "$HOME/.ipython/profile_default/startup/normal_env.ipy"

# ~/.tmux.conf
# ~/.tmux/plugins/tmux-continuum
# ~/.tmux/plugins/tmux-resurrect
check_file "$HOME/.tmux.conf"
check_plugin_git "$HOME/.tmux/plugins/tmux-continuum" "tmux-plugins"
check_plugin_git "$HOME/.tmux/plugins/tmux-resurrect" "tmux-plugins"

# ~/.vimrc
check_file "$HOME/.vimrc"

# ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
check_plugin_git "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" "zsh-users"
check_plugin_git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" "zsh-users"
