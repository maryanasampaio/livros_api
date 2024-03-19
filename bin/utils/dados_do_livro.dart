import 'generos_do_livro.dart';

class DadosDoLivro {
  static Map<String, dynamic> dadosDoLivro(List dados) {
    Map<String, dynamic> map = {
      'título': dados[0],
      'autor': dados[1],
      'ISBN': dados[2],
      'ano de lançamento': dados[3],
      'gênero': Generos.mapearGeneros(dados[4])
    };
    return map;
  }
}
