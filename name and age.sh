# Ввести имя и возраст и показать группу
#!/bin/fish

while true; do
    echo "enter your name:"
    read name

    [ -z "$name" ] && break

    echo "enter your age:"
    read age

    [ "$age" -eq 0 ] && break

    if [ "$age" -le 16 ]; then
        group="child"
    elif [ "$age" -ge 17 ] && [ "$age" -le 25 ]; then
        group="youth"
    else
        group="adult"
    fi

    echo "$name, your group is $group"
done

echo "bye"
