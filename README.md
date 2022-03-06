# Create db1000n instances in loop
###### Створюєш віртуалку linux (ubuntu 20.4) і запускаєш дві команди, і стартануть докер контейнери з db1000n
###### скріпт приймає два аргументи, від 1 до 30 (в данному випадку)
    wget https://raw.githubusercontent.com/xxx44552/create-db1000n-instances/main/launch.sh
  
    bash ./launch.sh 1 30
