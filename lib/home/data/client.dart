import 'package:dio/dio.dart';
import 'package:sample_book_store/common/utils/utils.dart';
import 'package:sample_book_store/home/home.dart';
import 'package:retrofit/retrofit.dart';

export 'entities/entities.dart';

part 'book_local_client.dart';
part 'book_remote_client.dart';
part 'client.g.dart';

abstract class BookDataClient {
  Future<List<BookEntity>> getBooks();
}
