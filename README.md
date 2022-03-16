# Create db1000n instances in loop
###### Створюєш віртуалку linux (ubuntu 20.4) і запускаєш дві команди, і стартануть докер контейнери з db1000n ( з іменами контейнерів від db1000n1 до db1000n10)
###### Скріпт приймає два аргументи, к-сть контейнерів, в данному випадку від 1 до 10, створиться 10шт.. Можна повторно запустити bash ./launch.sh 11 20 і створити додаткові контейнери
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/launch.sh
  
    bash ./launch.sh 1 10

###### Зайти в контейнер (для виходу ctrl + C)

    sudo docker exec -it db1000n8 ./main

###### Подивитись трафік який виходить з контейнерів

    sudo iptraf-ng
    
###### Швидкість інтернету

    speedtest

###### Список запущених контейнерів

    sudo docker ps
    
###### Видалити контейнери по діапазону
    
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/remove.sh

    bash ./remove.sh 1 10
