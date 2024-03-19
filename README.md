   DOCUMENTAÇÃO - API DE LIVROS

   Descrição: Criei essa api que visa o conhecimento e indicações de livros que possuem um grande sucesso.

  Como instalar o projeto:

* Você precisará do dart instalado em sua máquina!

* Clone o repositório em seu computador

* Após clonar o repositório você deve rodar os seguintes comandos:

- dart pub add shelf e dart pub add shelf_router

* Após rodar esses comandos, entre na pasta bin e depois na pasta componentes do projeto e rode o seguinte comando: dart servidor.dart

Após rodar você verá que o projeto foi iniciado na url http://localhost:4040

Você pode modificar isso editando o arquivo servidor.dart com o ip e a porta desejado.

Os Endpoints disponíveis no projeto são:

http://localhost:4040/livros
http://localhost:4040/livro/id
http://localhost:4040/novoLivro
http://localhost:4040/deletarLivro/id
Os ids dos livros vão de 1 à 30 


Obs:. 
--> pasta componentes: arquivos que compõem o projeto, como: servidor e api 
--> pasta utils: arquivos que são úteis para a criação do projeto, como: a api, o arquivo que contém os livros em texto, métodos que são incluidos no crud...
     

Faça bom uso.


   O QUE VOCÊ PODE FAZER: 

    - Pesquisar para ver uma lista que contém os 30 livros mais populares;
    - Pesquisar por um livro específico;
    - Adicionar um novo livro que você deseja que seja inserido na lista dos mais populares; 
    - Remover um livro que você não concorde que esteja ali ou até tenha adicionado um errado...
  
  
  
  
  PLANEJAMENTO DO PROJETO

1 - criar projeto 

2 - instalar dependecias shelf 

3 - criar e organizar pastas para cada arquivo e suas determinadas funções

exemplos:

a - utils: arquivos utils para o projeto, como a lista de livros e outros métodos criados para casos especiais ao decorrer do projeto, como o caso dos generos, do map de dados e etc.
b - estrutura: arquivos que fazem parte da estrutura do projeto, como a api que armazena todos os métodos necessários para a construção.
c - componentes: arquivos que armazenam e compõem o projeto, como as rotas e o servidor

4 - criar servidor 
obs: quando a api for criada, instancia-la neste arquivo para que o retorno do shelf seja ele.
a - chamar na main o shelf_io.serve, que por sua vez irá receber como parametros a api, o address e o port 


5 - criar classe para criação de métodos e suas funções CRUD 

 obs: já que os retornos dos métodos sempre serão um map, é util criar uma função que irá conter um map de dados do livro, que recebe um parametro
 que será dividido em indices, entao quando um livro for inserido, sera pego partes dele e sera preenchido com suas determinadas caracteristicas. 

 7 - criar método future para ler arquivo externo com os livros 

 8 - criar método future que transforme esses livros em uma lista 
 obs: listar em quebras de linha através do método split

 9 - criar método future para ler a lista de livros
 a - armazenar em uma variavel a lista de livros
 b - criar lista de map vazia para adicionar cada livro percorrido da lista, dentro dessa nova lista
 c - percorrer cada livro da lista com o for
 d - quebrar/dividir cada livro atraves do split com ';', dessa forma, irá ser dividido em dados especificos de cada livro
 e - adicionar nos parametros da nova lista, a função que retorna o map que contém os dados de cada livro, adicionando como parametro nessa função cada livro percorrido pelo for. Dessa maneira, será retornado uma lista de maps com os dados de cada livro dessa lista. 
 f - retornar lista   

 10 - criar método future para retornar um livro especifico
 a - método deve receber um indice como parametro 
 b - armazenar numa variavel a lista de livros criado anteriormente 
 c- retornar a lista de livros na posição do indice determinado pelo parametro do método.
   
  
obs:. o próximo método deve ser para adicionar um novo livro. Para isso, é necessário que antes seja criado um outro método booleano que irá receber um parametro e terá o objetivo de inserir um novo dado em um arquivo. 
* armazenar numa variável o arquivo que contém a lista de livros.txt
* ler esse arquivo como uma string 
* usar método .writeAsStringSync que possui a função de adicionar um novo elemento em um arquivo, além de ler o mesmo como um arquivo sincrono. Esse método recebe um parametro, neste caso, irá ser adicionado uma interpolação de strings que determina o que havia antes da adição de um novo elemento/livro e o que terá após, no caso, a lista de livros com o novo livro adicionado. 

 11 - criar metodo para adicionar/postar um novo livro 
 a - o metodo deve receber uma string do novo livro
 b-  armazenar numa variavel o método anterior que insere um novo dado em um arquivo, adicionar a string do novo livro como parametro.
 c - criar validação com mensagens de tratamentos de erro e o objetivo de: se o livro for adicionado com sucesso e caso não seja adicionado com sucesso

 12 - remover livro da lista 
 a - o metodo deve receber um id do livro que quer remover
 b -  armazenar numa variavel  o arquivo de livros.txt
 c - ler esse arquivo como uma string
 d - quebrar essa string em linhas a partir do split 
 e - armazenar numa variavel chamada ' livroRemovido o método .removeAt que recebe um parametro que por sua vez será o id do livro que quer excluir
 f - criar string vazia que terá o objetivo de armazenar a atualização dos livros ao remover um deles.
 g - percorrer arquivo com os livros 
 h- adicionar validação com o objetivo de: se não houver livro algum para remover, permanecer com a string vazia. por outro lado, se houver livros e eu queira remover algum, mostrar os que tinha e após remover, mostrar a mesma lista com os que terão.
 i - chamar e adicionar ao arquivo externo de livros o método writeAsStringSync que por sua vez irá receber como parametro a nova string de livros
 j - retornar livroRemovido.
 
obs:. adicionar tratamento de erro em todos os crud's

6 - criar rotas 

obs: instanciar handler e router e fazer os imports do shelf
 a - rota 1 :exibir todos os livros cadastrados 
 b - rota 2: consultar um livro especifico a partir do id
 c - rota 3: adicionar um novo livro 
 d - rota 4: remover um livro a partir do id

  obs: trasformar todos em jsonDecode.

 