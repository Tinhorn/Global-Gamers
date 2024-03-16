class GameLogicService {
  final List<GamePicture> gamePictures = [];
}

class GamePicture {
  final String assetLocation;
  final Map<String, WordLocation> wordToLocations;

  GamePicture({required this.assetLocation, required this.wordToLocations});
}

class WordLocation {
  final Coordinate topLeft;
  final Coordinate topRight;
  final Coordinate bottomLeft;
  final Coordinate bottomRight;

  WordLocation({
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });
}

class Coordinate {
  final double x;
  final double y;

  Coordinate({required this.x, required this.y});
}
