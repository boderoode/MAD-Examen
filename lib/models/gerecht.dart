class Gerecht{
  final String id;
  final String title;
  final String description;
  final String bereidingstijd;
  final String ingredienten;
  final String imageUrl;
  bool isFavorite;

  Gerecht({
    required this.id,
    required this.title,
    required this.description,
    required this.bereidingstijd, 
    required this.ingredienten,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
