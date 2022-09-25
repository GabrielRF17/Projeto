
zenity --list \
    --title="Trabalho" \
    --column="Usuário Cadastrados" \
    --text "" \
    "$(cat /etc/passwd | grep -E 'home|root' | cut -d : -f 1,6 | sed 's/:/ => /')"
