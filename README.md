## Integração do Pushbullet com o Zabbix usando Shellscript


###Crie o tipo de mídia:
Logado no Zabbix Server como Super-Administrador, clique em "Administração" > "Tipos de mídias" e depois em "Criar tipo de mídia".
Então teremos:
* Nome: Pushbullet
* Tipo: Script
* Nome do script: pushbullet.sh
* Ativo: sim

####Crie o usuário Pushbullet

Em "Administração" > "Usuários", clique em "Criar usuário"
Na guia Usuário, defina o apelido "Pushbullet". Fique a vontade com os outros parâmetros. Coloque-o em um grupo que tenha acesso as notificações que deseja emitir. O Zabbix administrators é uma sugestão.
Na guia Mídia, clique em adicionar. Defina:
* Tipo: Pushbullet 
* Enviar para: Aqui você colocará para qual canal irá receber as notificações. Se você criou o canal #zabbix, então defina #zabbix.
* Quando ativo: Período de notificação. O padrão é 24/7.
* Usar se risco: Com todos os campos marcados, ele gerará notificações sobre qualquer alerta das triggers. Configure de acordo sua vontade.
* Ativo: Sim

###Defina as ações

* Na guia "Configuração" > "Ações", clique em "Criar ação"
* Na guia "Ação", defina o nome "Pushbullet".
* No campo "Assunto padrão", defina "PROBLEMA".
* No campo "Mensagem padrão", defina algo simples, como por exemplo:

> {TRIGGER.NAME} - {HOSTNAME} ({IPADDRESS})

Marque o campo "Mensagem de recuperação" e defina o "Assunto da recuperação" como "RESOLVIDO". A mensagem de recuperação deixe igual (se quiser, claro!) a mensagem padrão.

* Na guia "Ações", em "Operações da ação", clique em "Nova".
defina, em "Detalhes da operação" > "Enviar para usuários", clique em "Adicionar" e selecione "Pushbullet" e adicione a ação.
