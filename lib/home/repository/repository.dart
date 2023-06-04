import 'package:sample_book_store/home/home.dart';

export 'models/models.dart';

part 'book_repository.dart';

abstract class BookRepository {
  Future<BookList> getBooks();
}
