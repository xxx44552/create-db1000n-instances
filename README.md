# Create db1000n instances in loop
###### Створюєш віртуалку linux (ubuntu 20.4) і запускаєш дві команди, і стартануть докер контейнери з db1000n ( з іменами контейнерів від db1000n1 до db1000n30)
###### скріпт приймає два аргументи, від 1 до 30 (в данному випадку)
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/launch.sh
  
    bash ./launch.sh 1 30

###### Зайти в контейнер (для виходу ctrl + C)

    sudo docker exec -it db1000n12 ./main
