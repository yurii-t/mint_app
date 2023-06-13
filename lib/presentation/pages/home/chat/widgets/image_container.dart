import 'package:flutter/material.dart';

class ImageCotainer extends StatelessWidget {
  final Color color;
  final BorderRadius border;
  final Color? errorBorder;
  final String? imageUrl;

  const ImageCotainer({
    required this.color,
    required this.border,
    this.errorBorder,
    this.imageUrl,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          color: color,
          borderRadius: border,
          border: Border.all(color: errorBorder ?? Colors.transparent),
        ),
        child: Image.network(
          imageUrl ?? '',
          loadingBuilder: (context, child, loadingProgress) {
            int? expSize;
            int? dowSize;
            expSize = loadingProgress?.expectedTotalBytes;
            dowSize = loadingProgress?.cumulativeBytesLoaded;

            return expSize != null && dowSize != null
                ? Center(
                    child: CircularProgressIndicator(
                      value: dowSize / expSize,
                      color: Colors.white,
                    ),
                  )
                : child;
          },
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
