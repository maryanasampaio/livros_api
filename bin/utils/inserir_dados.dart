import 'dart:io';

class InserirDados {
  static bool inserirDadoEmArquivo(String dados) {
    var arquivo = File('utils/livros.txt');

    var dadosAntigos = arquivo.readAsStringSync();

    arquivo.writeAsStringSync("$dadosAntigos\n$dados");

    return true;
  }
}
