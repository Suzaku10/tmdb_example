import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ItemSkeletonMoviesWidget extends StatefulWidget {
  const ItemSkeletonMoviesWidget({Key? key}) : super(key: key);

  @override
  _ItemSkeletonMoviesWidgetState createState() =>
      _ItemSkeletonMoviesWidgetState();
}

class _ItemSkeletonMoviesWidgetState extends State<ItemSkeletonMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Shimmer.fromColors(
                      highlightColor: Colors.amber,
                      baseColor: Colors.grey,
                      child: Container(
                        color: Colors.white,
                        height: 300,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 20,
                  child: Shimmer.fromColors(
                    highlightColor: Colors.amber,
                    baseColor: Colors.grey,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Shimmer.fromColors(
              highlightColor: Colors.amber,
              baseColor: Colors.grey,
              child: Container(
                color: Colors.white,
                constraints: BoxConstraints(maxWidth: 200, maxHeight: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Shimmer.fromColors(
              highlightColor: Colors.amber,
              baseColor: Colors.grey,
              child: Container(
                color: Colors.white,
                constraints: BoxConstraints(maxWidth: 200, maxHeight: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
