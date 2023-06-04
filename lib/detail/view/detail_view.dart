part of 'view.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Book data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          data.title ?? 'Details',
          style: context.headlineMedium?.secondary(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookCover.header(
              image: data.cover,
            ),
            const SizedBox(height: 10),
            CustomListTile(
              title: data.title,
              subtitle: data.author,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Row(
                children: [
                  AssetIcon(
                    AssetIcons.calendar,
                    color: context.secondary,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    data.date!,
                    style: context.bodySmall?.secondary(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
