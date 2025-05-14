import 'package:flutter/material.dart';
import '../widgets/course_info_section.dart';
import '../widgets/course_preview_header.dart';
import '../widgets/similar_courses_section.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // Course preview header with wireframe image and action buttons
                    CoursePreviewHeader(),

                    // Course information section with details and action buttons
                    CourseInfoSection(),

                    // Similar courses section with horizontal scroll
                    SimilarCoursesSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
