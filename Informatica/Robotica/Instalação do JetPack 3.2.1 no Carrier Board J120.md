---
title: Laborátorio de Informática
date: Julho 2019
---

#  Carrier Board J120

![Carrier Board J120](img/J120.png)

Neste guia, faremos os setups iniciais no carrier board J120 com o módulo da Nvidia Jetson TX2.

#  O que é preciso?

- Um Host PC com Linux 16.04
- Fonte de alimentação 12V
- Rede local 
- Cabo ethernet
- Micro HDMI
- Mouse/teclado

# Configurando o Host PC 

- Em seu computador, rodando um Linux 16.04 faça o [download do JetPack 3.2.1](link/JetPack-L4T-3.2.1-linux-x64_b23.run)
- Abra o terminal e crie uma pasta no seu diretório
```
mkdir ~/temp 
```
- Mova o JetPack 3.2.1 para dentro da pasta criada

```
mv ~/Downloads/JetPack-L4T-3.2.1-linux-x64_b23.run  ~/temp

```
- Garanta que o JetPack tem permissão para executar 

```
 chmod +x JetPack-L4T-3.2.1-linux-x64_b23.run 

```

- Execute o JetPack 3.2.1

```
./JetPack-L4T-3.2.1-linux-x64_b23.run 

```
![Clique em Next](img/JetPack_1.png)
![Configure corretamente o diretório para instalação](img/JetPack_2.png)
![Selecione a placa Jetson TX2](img/JetPack_3.png)
![Configure corretamente os pacotes que serão instalados na placa](img/JetPack_4.png)
![Configure corretamente os pacotes que serão instalados na placa](img/JetPack_5.png)
![Next para seguir a instalção](img/JetPack_7.png)
![Selecione Finish](img/JetPack_8.png)

Você pode fazer o Download do arquivo diretamente clicanto [aqui](link/CTI-L4T-V112.tgz), ou, acesse o [site](http://connecttech.com/support/resource-center/nvidia-jetson-tx2-tx1-product-support/) e siga os passos conforme a imagem...

- Copie o Arquivo baixado para o diretório Linux_for_Tegra dentro da pasta 64_TX2 usando o comando a seguir;

```
cp ~/Downloads/CTI-L4T-V112.tgz ~/temp/64_TX2/Linux_for_Tegra

```

- Descompacte os arquivos com o comando;

```
cd ~/temp/64_TX2/Linux_for_Tegra/


tar -xvf CTI-L4T-V112.tgz

```



