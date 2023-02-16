import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CollectedPage extends StatelessWidget {
  const CollectedPage({
    Key? key,
  }) : super(key: key);

  static const pattern = [
    StairedGridTile(0.5, 3 / 4),
    StairedGridTile(0.5, 3 / 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GridView.custom(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverStairedGridDelegate(
          pattern: pattern,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          startCrossAxisDirectionReversed: true,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            final tile = pattern[index % pattern.length];
            return ImageTile(
              index: index,
              width: (tile.aspectRatio * 400).ceil(),
              height: 400,
            );
          },
        ),
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  final int index;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Image.network(
        'https://picsum.photos/500/500?random=$index',
        width: width.toDouble(),
        height: height.toDouble(),
        fit: BoxFit.cover,
      ),
    );
  }
}
