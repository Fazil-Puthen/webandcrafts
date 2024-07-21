class Banner {
  final String title;
  final String imageUrl;

  Banner({required this.title, required this.imageUrl});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      title: json['title'],
      imageUrl: json['image_url'],
    );
  }
}