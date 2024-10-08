import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AnimalStatSkeleton extends StatelessWidget {
  const AnimalStatSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 18,
              width: 100,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 4),
            Container(
              height: 24,
              width: 50,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
