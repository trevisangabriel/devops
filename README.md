
Link apostila:
https://docs.google.com/document/d/1Pi9h1QXyBOhzm_9LYIWyWWcBZNFNJYc7_Aj6bA65Pyk/edit

Link apresentação:
https://docs.google.com/presentation/d/1h81actx7ReWqXykzGhYJRuH_byCxALVL6MbLUvxxmmU/edit#slide=id.gf113ee1e2f_0_145

Instalar o AWS CLI
------------------------------------------------------------------------------------------------------------------
https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2.html

gerar um usuário no IAM
aqui: https://console.aws.amazon.com/iamv2/home?#/groups/create
Criar um security group e fazer download das chaves exemplo: professor.danilo_accessKeys.csv
baixar o csv e colocar as informações da conta no configure do aws cli
comando:
aws configure


## multiplos terminais
Iterm
tilix
https://gnunn1.github.io/tilix-web/





# # ver os processos pela porta
# sudo lsof -iTCP -sTCP:LISTEN -P | grep :5001

# # ver os processos do node
# ps aux | grep node

# # matar ao processo com número PID
# kill -9 PID

# sudo su -
# mysql -u root

# use treinamento_database;

# alter table usuarios add column email varchar(150);
# alter table usuarios add column descricao text;

# update usuarios set email='danilo@gmail.com' where id=1;

# danilo@gmail.com
# danilo 