import 'dart:io';

import 'dados_do_livro.dart';
import 'inserirDados.dart';
import 'inserir_dados.dart';

class Livros {
  static Future<String> getLivros() async {
    try {
      return await File('livros.txt').readAsString();
    } catch (e) {
      print('Erro ao ler o arquivo de livros: $e');
      return '';
    }
  }

  static Future<List<String>> listarLivros() async {
    try {
      List<String> listarLivros = (await getLivros()).split('\n').toList();
      return listarLivros;
    } catch (e) {
      print('Erro ao listar os livros: $e');
      return [];
    }
  }

  static Future<List<Map>> lerTodosOsLivros() async {
    try {
      List<String> listaDeLivros = await listarLivros();
      List<Map> novaListaDeLivros = [];

      for (var livro in listaDeLivros) {
        List<String> dados = livro.split(';');
        novaListaDeLivros.add(DadosDoLivro.dadosDoLivro(dados));
      }

      return novaListaDeLivros;
    } catch (e) {
      print('Erro ao ler todos os livros: $e');
      return [];
    }
  }

  static Future<Map<dynamic, dynamic>> livroEspecifico(int indice) async {
    try {
      List<Map> livros = await lerTodosOsLivros();
      return livros[indice];
    } catch (e) {
      print('Erro ao obter o livro específico: $e');
      return {};
    }
  }

  static String adicionarLivro(String livro) {
    try {
      bool tentaAdicionarLivro = InserirDados.inserirDadoEmArquivo(livro);

      if (tentaAdicionarLivro) {
        return 'o livro: $livro adicionado com sucesso';
      } else {
        return 'Houve um problema ao tentar adicionar o livro';
      }
    } catch (e) {
      print('Erro ao adicionar o livro: $e');
      return 'Houve um erro ao tentar adicionar o livro';
    }
  }

  static String removerLivro(int indice) {
    try {
      var arquivo = File('livros.txt');
      var stringDeLivros = arquivo.readAsStringSync();
      var livros = stringDeLivros.split("\n");
      var livroRemovido = livros.removeAt(indice);
      var minhaNovaStringDeLivros = "";

      for (var livro in livros) {
        if (minhaNovaStringDeLivros == "") {
          minhaNovaStringDeLivros = livro;
        } else {
          minhaNovaStringDeLivros = "$minhaNovaStringDeLivros\n$livro ";
        }
      }

      arquivo.writeAsStringSync(minhaNovaStringDeLivros);

      return livroRemovido;
    } catch (e) {
      print('Erro ao remover o livro: $e');
      return 'Houve um erro ao tentar remover o livro';
    }
  }
}
