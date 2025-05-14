import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/category_chip.dart';
import '../widgets/course_card.dart';

class SimilarCoursesSection extends StatefulWidget {
  const SimilarCoursesSection({Key? key}) : super(key: key);

  @override
  State<SimilarCoursesSection> createState() => _SimilarCoursesSectionState();
}

class _SimilarCoursesSectionState extends State<SimilarCoursesSection> {
  String _selectedCategory = 'All';

  // Sample data for similar courses (in a real app, this would come from an API or state management)
  final List<Course> _similarCourses = [
    Course(
      title: 'Artificial Intelligence and ML',
      rating: 4.3,
      enrollmentCount: 5678,
      description: 'Learn about AI and Machine Learning fundamentals',
      price: 1500,
      imageAsset: 'assets/images/ai_ml_course.png',
    ),
    Course(
      title: 'User Interface and User Experience',
      rating: 4.7,
      enrollmentCount: 4350,
      description: 'Master UI/UX design principles',
      price: 1500,
      imageAsset: 'assets/images/ui_ux_course.png',
    ),
    Course(
      title: 'Computer Engineering',
      rating: 4.2,
      enrollmentCount: 3980,
      description: 'Fundamentals of computer engineering',
      price: 1500,
      imageAsset: 'assets/images/computer_eng_course.png',
    ),
  ];

  final List<String> _categories = [
    'All',
    'AI & ML',
    'Product',
    'Sales',
    'Public Speaking',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Similar courses header with "See All" action
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Similar Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Viewing all similar courses'),
                    ),
                  );
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Category filter chips
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                return CategoryChip(
                  label: _categories[index],
                  isSelected: _selectedCategory == _categories[index],
                  onSelected: (selected) {
                    setState(() {
                      _selectedCategory = _categories[index];
                    });
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 16),

          // Horizontal scrolling course cards
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _similarCourses.length,
              itemBuilder: (context, index) {
                final course = _similarCourses[index];
                return CourseCard(course: course);
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
} // TODO Implement this library.
