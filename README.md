# Create db1000n instances in loop
###### Створюєш віртуалку linux (ubuntu 20.4) і запускаєш дві команди, і стартануть докер контейнери з db1000n ( з іменами контейнерів від db1000n1 до db1000n30)
###### Скріпт приймає два аргументи, ( я створюю на 4 гб віртуалкі 100 конейнерів, займає приблизно 3.2 гб). Можна повторно запустити bash ./launch.sh 31 100 і створити додаткові контейнери, або відразу на сотню bash /.launch.sh 1 100
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/launch.sh
  
    bash ./launch.sh 1 30

###### Зайти в контейнер (для виходу ctrl + C)

    sudo docker exec -it db1000n12 ./main

###### Подивитись трафік який виходить з контейнерів

    sudo iptraf-ng
    
###### Швидкість інтернету

    speedtest

###### Список запущених контейнерів

    sudo docker ps
    
###### Видалити контейнери по діапазону
    
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/remove.sh

    bash ./remove.sh 70 100
