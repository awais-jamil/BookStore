part of 'client.dart';

@RestApi(baseUrl: 'https://api.example.com')
abstract class BookRemoteClient implements BookDataClient {
  factory BookRemoteClient(Dio dio, {String baseUrl}) = _BookRemoteClient;

  @GET('/')
  @override
  Future<List<BookEntity>> getBooks();
}
