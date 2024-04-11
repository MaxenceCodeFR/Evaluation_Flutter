class BookDto {
  final String id;
  final String title;
  final String author;
  final int yearOfPublication;

  BookDto({
    required this.id,
    required this.title,
    required this.author,
    required this.yearOfPublication,
  });

  factory BookDto.fromJson(Map<String, dynamic> json) {
    return BookDto(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      yearOfPublication: json['yearOfPublication'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'title': title,
      'author': author,
      'yearOfPublication': yearOfPublication,
    };
    return data;
  }
}