---
title: Laborátorio de Informática
date: Julho 2019
---

# Configurando o Development Kit Jetson TX2

![Jetson TX2](img/jetsontx2.jpeg)

Neste guia, faremos os setups iniciais na placa da Nvidia - Development Kit Jetson TX2

#  O que é preciso?

- Um Host PC com Linux 16.04
- Development Kit Jetson TX2
- Mouse/Teclado
- Monitor
- Roteador/Cabos de rede


# Configurando o Host PC 

- Conecte o seu Computador a uma rede local 
- Em seu computador, rodando um Linux 16.04 faça o [download do JetPack 3.2.1](https://developer.nvidia.com/embedded/jetpack-3_2_1)
- Abra o terminal e crie uma pasta no seu diretório
```
mkdir ~/jtx2
```
Mova o JetPack 3.2.1 para dentro da pasta criada

```
mv ~/Downloads/JetPack-L4T-3.2.1-linux-x64_b23.run  ~/jtx2

```
Garanta que o JetPack tem permissão para executar 

```
 chmod +x JetPack-L4T-3.2.1-linux-x64_b23.run 

```

Execute o JetPack 3.2.1

```
./JetPack-L4T-3.2.1-linux-x64_b23.run 

```

Clique em Next
![Clique em Next](img/JetPack_1.png) 

Configure corretamente o diretório para instalação
![Configure corretamente o diretório para instalação](img/JetPack_2.png) 

Selecione a placa Jetson TX2
![Selecione a placa Jetson TX2](img/JetPack_3.png) 

Escolha aqui o que será instalado na sua J120
![Configure corretamente os pacotes que serão instalados na placa](img/JetPack.jpeg) 

Next para seguir a instalção
![Next para seguir a instalção](img/Jetson_7.png) 

Selecione Finish
![Selecione Finish](img/Jetson_8.png) 



![JetPack](img/JetPack.jpeg) 


# Vamos conlocar a Jetson TX2 em modo de programção!

Conecte a fonte de alimentação na sua placa

![Ligação do cabo de alimentação](img/jetson_energia.jpeg) 


Para entrar em modo de programação, aperte e solte o botão Power, depois segure o botão Recovery ao mesmo tempo em que segura o botão de Reset por dois segundos, logo após, solte o botão de Reset, e, por ultimo, solte o botão de Recovery. 


![Entre no modo de programação](https://github.com/liciascl/insper-docs/blob/master/Informatica/Robotica/img/programacaotx2.gif)

Para verificar se a placa está em modo de programação, digite o comando num terminal

```
lsusb

```

![Verificando se a placa está no modo de programação](img/lsusb.png)


Conecte o cabo HDMI, o cabo micro usb e o cabo de rede na sua JetsonTX2 e no seu Pc 

![Ligação dos periféricos](https://github.com/liciascl/insper-docs/blob/master/Informatica/Robotica/img/jetson_microusb.jpeg)

Dê Enter neste terminal quando a Jetson TX2 estiver em modo de programação
![j120_program](https://github.com/liciascl/insper-docs/blob/master/Informatica/Robotica/img/Screenshot%20from%202019-07-29%2016-58-05.png) 

Aguarde o Host Pc terminar a instalação e reinicie o sistema para validar as configurações






## Tutorial baseado no [JetPack 3.0 – NVIDIA Jetson TX2 Development Kit](https://www.jetsonhacks.com/2017/03/21/jetpack-3-0-nvidia-jetson-tx2-development-kit/) 


