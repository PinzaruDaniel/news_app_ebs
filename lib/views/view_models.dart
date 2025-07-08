class NewsViewModel{
  final String title;
  final String imageUrl;
  final String publisher;
  final String publisherIcon;
  final String topic;
  final String views;
  final String likes;
  final String comments;
  final String description;
  final List<String> hashtags;

  NewsViewModel({
    required this.title,
    required this.imageUrl,
    required this.publisher,
    required this.publisherIcon,
    required this.topic,
    required this.views,
    required this.likes,
    required this.comments,
    required this.description,
    required this.hashtags
});

}