import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CatalogueProduct extends StatelessWidget {
  const CatalogueProduct({
    required this.onSelect,
    required this.layout,
    required this.image,
    this.shadowColor = const Color.fromARGB(200, 0, 0, 0),
    this.shadowOffset = const Offset(0, 0),
    this.borderRadius = 5,
    this.shadowBlur = 10,
    this.padding,
    this.margin,
    this.height,
    this.width,
    super.key,
  });

  final Future<void> Function() onSelect;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Offset shadowOffset;
  final Color shadowColor;
  final double shadowBlur;
  final double? height;
  final double? width;
  final Widget? layout;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: shadowBlur,
              offset: shadowOffset,
              color: shadowColor,
            ),
          ],
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
          color: Colors.black,
        ),
        child: layout,
      ),
    );
  }
}
