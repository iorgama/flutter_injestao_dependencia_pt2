# Injeção de dependências - Parte 02 (Containers)

- Modular
- Get_It
- Get

## Exercício 01:

Visando por em prática a injeção de dependências através de containers, utilizando o package Modular, vamos:

- Criar um usecase, que possui a dependência de um service;
- Criar os bindings no módulo;
- Criar um segundo usecase, que possua a mesma dependência;
- Garantir que os valores compartilhados entre ambos os usecases são iguais.

## Exercício 02:

Visando por em prática a injeção de dependências através de containers, utilizando o package Get_It, vamos:

- Remova a estrutura do Modular e utilize a do próprio Flutter (Material App, etc);
- Crie os containers num arquivo próprio para as injeções;
- Garanta que tudo continua funcionando de acordo com o que foi criado anteriormente com Modular.

## Exercício 03:

Visando por em prática a injeção de dependências através de containers, utilizando o package Get, vamos:

- Remova a chamada da função de injeção do Get_It;
- Crie uma função que registra os containers, e chame-a no initState do App (O mesmo deve ser criado como stateful);
- Garanta que tudo continua funcionando de acordo com o que foi criado anteriormente com Modular e Get_It.
