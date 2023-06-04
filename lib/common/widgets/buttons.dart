import 'package:flutter/material.dart';
import 'package:sample_book_store/common/common.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      borderWidth: 1,
      size: const Size.square(40),
      padding: const EdgeInsets.all(10),
      child: IconTheme(
        data: context.theme.iconTheme.copyWith(size: 20),
        child: icon,
      ),
    );
  }
}