part of 'view.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  const DetailPage({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Book data;

  @override
  Widget build(BuildContext context) {
    return DetailView(
      data: data,
    );
  }
}
