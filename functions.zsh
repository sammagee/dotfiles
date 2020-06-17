# Docker
dseed() {
    docker-compose run $1 python3 manage.py seed $2
}

dexec() {
    case $1 in
        'bh')
            case $2 in
                'back')
                    docker exec -it behandle_behandle_1 /bin/bash
                ;;
                *)
                    docker exec -it behandle_behandle_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        'br')
            case $2 in
                'back')
                    docker exec -it business-rules_br_1 /bin/bash
                ;;
                *)
                    docker exec -it business-rules_br_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        'cms')
            case $2 in
                'back')
                    docker exec -it cms_cms_1 /bin/bash
                ;;
                *)
                    docker exec -it cms_cms_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        'forms')
            case $2 in
                'back')
                    docker exec -it forms_forms_1 /bin/bash
                ;;
                *)
                    docker exec -it forms_forms_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        'pa')
            case $2 in
                'back')
                    docker exec -it platform-admin_pa_1 /bin/bash
                ;;
                *)
                    docker exec -it platform-admin_pa_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        'users')
            case $2 in
                'back')
                    docker exec -it users_users_1 /bin/bash
                ;;
                *)
                    docker exec -it users_users_vue_cli_1 /bin/bash
                ;;
            esac
        ;;
        *)
            echo "Unrecognized shorthand container name '$1'"
            echo "Attempting to use as literal..."
            docker exec -it $1 /bin/bash
        ;;
    esac
}
