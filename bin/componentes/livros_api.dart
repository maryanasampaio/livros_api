import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../utils/livros_class.dart';

class LivrosApi {
  Handler get handler {
    Router router = Router();

    router.get('/livros', (Request req) async {
      var livros = await Livros.lerTodosOsLivros();

      return Response.ok(livros);
    });
    router.get('/livro/<id>', (Request req, String id) {
      int idEmInt = int.parse(id);
      var livroEspecifico = Livros.livroEspecifico(idEmInt);
      return Response.ok(livroEspecifico);
    });
    router.post('/novoLivro', (Request req, String livro) {
      var novoLivro = Livros.adicionarLivro(livro);
      return Response.ok(novoLivro);
    });
    router.delete('/deletarLivro/<id>', (Request req, String id) {
      int idEmInt = int.parse(id);

      var deletarLivro = Livros.removerLivro(idEmInt);
      return Response.ok(deletarLivro);
    });

    return router.call;
  }
}
