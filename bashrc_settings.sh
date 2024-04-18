# Rewrite cd function

alias cd='cd_func'

cd_func() {
    builtin cd "$@"
    if [[ -f ".env" ]]; then
        source .env
    fi
    switch
}

switch() {
    case "$VIRTUAL_ENV" in
    "")
        if [[ -n "$folder_path" && -n "$virtual_env_name" ]]; then
            if [[ "$(pwd)" == "$folder_path" || "$(pwd)" =~ ^"${folder_path}/".* ]]; then
                source "${folder_path}/${virtual_env_name}/bin/activate"
                echo -e "Virtual environment '$virtual_env_name' has been activated \e[32m\u2713\e[0m"
            fi
        fi
        ;;
    *)
        if [[ "$(pwd)" != "$folder_path" && ! "$(pwd)" =~ ^"${folder_path}/".* ]]; then
            deactivate
            echo -e "Virtual environment '$virtual_env_name' has been deactivated \e[31m\u2717\e[0m"
        fi
        ;;
    esac
}
