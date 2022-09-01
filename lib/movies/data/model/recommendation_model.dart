import 'package:movies_app_clean_architecture/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
     required super.backgroundImage,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backgroundImage: json['backdrop_path']??"/mgmewe5TKTEI2S8jSo306UcP0x3.jpg",
        id: json['id'],
      );
}
