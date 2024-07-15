# Monitor de Memória do Servidor - Ambiente Linux
------

Estes são scripts shell que monitoram o uso da memória do sistema, um deles envia um alerta ao adm por e-mail se o consumo ultrapassar um determinado limite.


O script verifica a memória total e a memória consumida do sistema, calculando a porcentagem de uso. Se essa porcentagem exceder 80%, um e-mail é enviado ao administrador para notificar sobre o alto consumo de memória.

------
# Pré-requisitos

- Sistema operacional Linux com suporte a bash.
- Ferramenta `mail` instalada e configurada para envio de e-mails.
- Acesso ao comando `free` para verificar o uso da memória.

------
# Versão do bash

Versão do bash em que eu fiz os meus testes, em versões antigas alguns comandos e recursos podem não funcionar.

```bash
# $ bash --version
GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
Versão SO Linux Ubuntu 20.04.06 LTS
```
-----

## Como Usar
```bash
# Clone o repositório:
git clone https://github.com/Glaucia-S-Castro/Shell-Scripting-Monitor-de-Memoria.git

# Entre no diretório:  
cd Shell-Scripting-Monitor-de-Memoria

# Dê permissão de execução ao script:
chmod +x monitor-de-memoria-com-envio-de-email.sh

# Execute o script:
bash monitor-de-memoria-com-envio-de-email.sh
```
-------

## Funcionalidades

- Monitora o uso da memória em tempo real, mas é possivel configurar a verificação em um intervalo de tempo desejado.

- Envia um alerta ao adm por e-mail quando o consumo de memória ultrapassa o limite determinado (no meu caso configurei pra 80%) .

------

## Configuração do E-mail

Certifique-se de que o mail está configurado corretamente para que o script possa enviar e-mails. Modifique o endereço de e-mail no script conforme necessário.

--------
## Agendamento de execução automática com Cron

Para executar o script automaticamente, você pode agendar uma tarefa no cron. Para editar o crontab, use:

```bash
sudo crontab -e
```
Para monitoramento em tempo real adicione a seguinte linha para executar o script todos os dias a cada 2 minutos:

```bash
*/2 * * * * /caminho/para/seu/script/monitor-de-memoria-com-envio-de-email.sh
```
Caso prefira que o monitoramento ocorra diariamente mas rodando uma vez ao dia adicione a seguinte linha para executar o script todos os dias às 12:00:

```bash
0 12 * * * /caminho/para/seu/script/monitor-de-memoria-com-envio-de-email.sh
```
Salve a alteração no arquivo e pronto, seu script vai rodar automáticamente conforme configurado.

-------
## Contribuição
Sinta-se à vontade para fazer um fork do repositório, realizar alterações e abrir pull requests.

-------

## Contato
Para dúvidas ou sugestões, entre em contato:

Email: glauciacastro.dev@gmail.com
