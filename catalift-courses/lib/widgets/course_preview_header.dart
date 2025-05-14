import 'package:flutter/material.dart';
import '../models/course.dart';

class CoursePreviewHeader extends StatelessWidget {
  const CoursePreviewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Course preview image using Image.asset instead of Container+DecorationImage
        Image.asset(
          'assets/images/course_wireframe.png',
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),

        // Back button
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo[900],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

        // Bookmark button
        Positioned(
          top: 16,
          right: 16,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.bookmark_border, color: Colors.indigo[900]),
              onPressed: () {
                // Handle bookmark functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Course bookmarked!')),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}