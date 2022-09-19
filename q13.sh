
zenity --list \
    --title="Trabalho" \
    --column="Palavras em ordem alfabetica" \
    --text "" \
    "$(cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 7 | sort | uniq -c | sort | head -n 1 | tr -s "  " | awk '{ print $2 "  => " $1 }')"
