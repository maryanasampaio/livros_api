import 'package:shelf/shelf_io.dart' as shelf_io;

import 'livros_api.dart';

void main() {
  LivrosApi livros = LivrosApi();

  shelf_io.serve(livros.handler, 'localhost', 4040);
  print('carregando servidor... http://localhost:4040');
}
