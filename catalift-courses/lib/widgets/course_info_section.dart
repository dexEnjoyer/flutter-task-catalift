import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/action_buttons.dart';

class CourseInfoSection extends StatelessWidget {
  const CourseInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample course data (in a real app, this would come from an API or state management)
    final course = Course(
      title: 'Artificial Intelligence',
      rating: 4.5,
      enrollmentCount: 8374,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      price: 1500,
      isHighEnrolling: true,
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Enrollment tag
          if (course.isHighEnrolling)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'High Enrolling',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
          const SizedBox(height: 12),

          // Course title
          Text(
            course.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 8),

          // Rating and enrollment
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              Text(
                ' ${course.rating}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                '|',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(width: 8),
              Text(
                '${course.enrollmentCount.toString()} Enrolled',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Course description
          Text(
            course.description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),

          // Price tag
          Text(
            '₹${course.price}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 16),

          // Action buttons (Add to cart and Buy now)
          const ActionButtons(),
        ],
      ),
    );
  }
} // TODO Implement this library.
