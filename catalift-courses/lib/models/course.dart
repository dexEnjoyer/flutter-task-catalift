class Course {
  final String title;
  final double rating;
  final int enrollmentCount;
  final String description;
  final double price;  // Changed from int to double to match the new version
  final String? imageAsset;
  final String? imageUrl;  // Added from the new version
  final bool isHighEnrolling;
  final List<String>? categories;  // Added to support filtering in SimilarCoursesSection

  Course({
    required this.title,
    required this.rating,
    required this.enrollmentCount,
    required this.description,
    required this.price,
    this.imageAsset,
    this.imageUrl,
    this.isHighEnrolling = false,
    this.categories,
  });
  
  // Getter for backward compatibility - returns either imageUrl or imageAsset
  String? get displayImage => imageUrl ?? imageAsset;
  
  // Getter to unify the naming between enrollmentCount and enrolledCount
  int get enrolledCount => enrollmentCount;
}