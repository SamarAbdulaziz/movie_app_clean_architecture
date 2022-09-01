import 'package:equatable/equatable.dart';

class Recommendation extends Equatable {
  final String backgroundImage;
  final int id;

  const Recommendation({
    required this.backgroundImage,
    required this.id,
  });

  @override
  List<Object?> get props => [backgroundImage, id];
}
