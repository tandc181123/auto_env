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
    if [[ -n "${VIRTUAL_ENV}" ]]; then
        if [[ "$(pwd)" != "${FOLDER_PATH}" && ! "$(pwd)" =~ ^"${FOLDER_PATH}/".* ]]; then
            deactivate
        fi
    elif [[ -z "${VIRTUAL_ENV}" && -n "${FOLDER_PATH}" ]]; then
        if [[ "$(pwd)" == "${FOLDER_PATH}" || "$(pwd)" =~ ^"${FOLDER_PATH}/".* ]]; then
            source "${FOLDER_PATH}/venv/bin/activate"
        fi
    fi
}
