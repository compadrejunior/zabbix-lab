# Zabbix Lab
## Visão Geral
Esse repositório serve de Tutorial para instalação e configuração do Zabbix Server e demais componentes. 

## Pré-requisitos
Esse tutorial se baseia em uma máquina Windows 10. Você pode executá-lo no Linux, porém os ajustes necessários são por sua conta. 

- **Vagrant**: Instale o Vagrant a partir do endereço https://www.vagrantup.com/downloads
- **VirtualBox**: Para executar o Lab você precisa instalar o Oracle VirtualBox. Você pode fazer o download do VirtualBox em https://www.virtualbox.org/wiki/Downloads
- **Git**: você precisa instalar o git e baixar o conteúdo desse repositório. Para instalar o git use o link https://git-scm.com/downloads. Para baixar esse repositório basta executar o comando ```git clone git@github.com:compadrejunior/zabbix-lab.git```
- **Editor de Texto**: Eu recomendo o uso do Visual Studo Code para visualizar e editar os arquivos desse repositório.
- **Terminal**: Você pode usar o terminal do Windows mas eu recomendo usar o gitbash por ele utilizar uma sintaxe semelhante à do Linux que eu vou utilizar nesse tutorial. 

## Configurando o Zabbix Server
1. Inicie a VM CentOS para configurar o servidor do Zabbix.   
    > **Observação**: Usaremos uma máquina virtual para o servidor. Essa máquina está configurada no arquivo Vagrantfile desse repositório que você deve baixar conforme a seção de pré-requisitos. 

    ```bash
    vagrant up
    ```

2. Conecte na máquina através do comando abaixo:

    ```bash
    vagrant ssh
    ```

3. Instale o telnet;

    ```bash
    sudo yum install -y telnet
    ```

4. Configure o arquivo selinux para facilitar algumas tarefas que faremos nesse tutorial. Para isso edite o arquivo alterando a propriedade SELINUX de enforcing para disabled.
    > **Importante**: o arquivo selinux define o nível de segurança do Linux e impõe certas restrições de escritas em alguns arquivos e diretórios. Esse passo não deve ser feito em um servidor de produção.

    4.1 Execute o comando abaixo para editar o arquivo

    ```bash
    sudo vi /etc/sysconfig/selinux
    ```

    4.2 O arquivo original será parecido com o exemplo abaixo:

    ```bash
    # This file controls the state of SELinux on the system.
    # SELINUX= can take one of these three values:
    #     enforcing - SELinux security policy is enforced.
    #     permissive - SELinux prints warnings instead of enforcing.
    #     disabled - No SELinux policy is loaded.
    SELINUX=enforcing
    # SELINUXTYPE= can take one of three values:
    #     targeted - Targeted processes are protected,
    #     minimum - Modification of targeted policy. Only selected processes are protected.
    #     mls - Multi Level Security protection.
    SELINUXTYPE=targeted
    ```

    4.3 Para alterar o arquivo pressione i no teclado e altere alinha correspondente ao parâmetro SELINUX. O arquivo alterado deve ser parecido com o exemplo abaixo:

    ```bash
    # This file controls the state of SELinux on the system.
    # SELINUX= can take one of these three values:
    #     enforcing - SELinux security policy is enforced.
    #     permissive - SELinux prints warnings instead of enforcing.
    #     disabled - No SELinux policy is loaded.
    SELINUX=disabled
    # SELINUXTYPE= can take one of three values:
    #     targeted - Targeted processes are protected,
    #     minimum - Modification of targeted policy. Only selected processes are protected.
    #     mls - Multi Level Security protection.
    SELINUXTYPE=targeted
    ```

    4.4 Para salvar pressione ESC e depois digite qw! Se tudo ocorrer bem você verá novamente o terminal do linux dentro da máquina virtual. 

5. Desligue a máquina virtual usando o comando abaixo:

    ```bash
    sudo shutdown -h now 
    ```



