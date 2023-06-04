import 'package:sample_book_store/common/utils/utils.dart';
import 'package:sample_book_store/home/home.dart';

export 'entities/entities.dart';

part 'book_local_data.dart';

abstract class BookDataClient {
  Future<List<BookEntity>> getBooks();
}
