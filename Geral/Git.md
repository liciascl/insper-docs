# Objetivo

Introdução aos principais comandos do *git*

# Campo de Aplicação

# Referência

https://www.atlassian.com/git/tutorials

https://www.sbf5.com/~cduan/technical/git/

https://pt.slideshare.net/kaminaga/introduo-ao-git-34876215

# Definições

**GIT** - Programa de versionamento de código distribuído
**GitHub** - Principal site para disponibilizar repositórios *git* na nuvem.
**Repositório** - Espaço de trabalho.
**Branch** - Tronco

# Como usar


## Iniciando um repositório
Para inicializar um repositório, crie a pasta do projeto, ou navegue até um projeto existente e utilize o seguinte comando:

```
git init
```

### Adicionando um repositório remoto

Caso você tenha criado o repositório com o `git init` e precisa subir para um remoto, utilize o seguinte comando:

```
git remote add umnome https://github.com/Usuario/NomeDoRepositorio.git
```

Feito isso você configurou o repositório remoto e ele será referenciado por umnome

para sincronizar as informações com seu mais novo repositório utilize

```
git fetch umnome
```

## Clonando um repositório

Caso já tenha um repositório hospedado em algum lugar, podemos clona-lo para uma pasta em nosso ambiente local.

### Clonando por HTTPS
Para clonar por HTTPS ache a URL relativa ao repositório, que deve ser algo como:

```https://github.com/Usuario/NomeDoRepositorio.git```

Assim basta:


```
git clone https://github.com/Usuario/NomeDoRepositorio.git
```

Feito isso, será pedido seu usuário e senha para o repositório, seja no terminal, seja por um popup.

### Clonando por SSH <small>Recomendado</small>
Para clonar por ssh precisamos seguir alguns passo.

1 - Gerar uma chave ssh(Par publico-privada) de acordo com as cofigurações do host

2 - Inserir a chave privada em seu agente ssh e ativá-lo
[Detalhes GitHub](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

3 - Inserir a chave Publica nas configurações do host
[Detalhes GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

4 - Por fim fazer o clone

```
git clone git@github.com:Usuario/NomeDoRepositorio.git
```

## Verificando o trabalho

### `git status`
Mostra uma lista com os arquivos que foram modificados/inseridos/criados em nosso repositório

>Ex.
```
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   base.c

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	arquivo.c

no changes added to commit (use "git add" and/or "git commit -a")
```

### `git diff`
Mostrará as alterações nos arquivos relativas ao ultimo commit, mostra qual era o trecho de código original, e logo depois o que foi modificado, arquivo por arquivo



## Criando um commit
Para criar um commit é necessário seguir alguns passos

### Adicionando arquivos `git add`
Com o git add você indica quais são os arquivos que serão incluídos no commit

Para adicionar **todos** arquivos e pastas ao commit utilize o seguinte comando:

```
git add .
```

> Mas preste atenção que esse comando irá executar de forma recursiva. Incluindo todas as subpastas do seu projeto


Para adicionar um arquivo específico utilize o:

```git add pasta/para/arquivo/nomeDoArquivo.c```


As *wildcards* de seleção de arquivos são aceitas também no comando

```
git add *.c
```


### Criando o commit com os arquivos adicionados

Basta utilizar o comando:

```
git commit
```

Este comando irá abrir algum editor de texto (vi/m, nano, etc) para que você insira a mensagem do commit, provavelmente já terá uma serie de comentários lhe indicando do que se trata o commit. Basta salvar e fechar o editor para que a operação se conclua

>Exemplo
```
Primeiro commit
# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# Committer: Emil Freme
#
# On branch master
#
# Initial commit
#
# Changes to be committed:
#       new file:   arquivo.c
#
```

Para pular a fase de adicionar os arquivos com o git add, podemos utilizar:

```
git commit -a
```

Para inserir um comentário de apenas uma linha no commit podemos utilizar:

```
git commit -m "Sua mensagem aqui"
```

Podemos juntas os dois últimos comando:

```
git commit -a -m "Uma mensagem"
```
ou
```
git commit -am "Outra mensagem"
```

## "Subindo" as alterações

Terminada uma sessão de trabalho, precisamos garantir que nosso repositório remoto receba as alterações que fizemos localmente. para isso utilizamos:

```
git push nomeDoRemoto nomeDaBranch
```
