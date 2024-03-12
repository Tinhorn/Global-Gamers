class GameLogicService {
  final List<GamePicture> gamePictures = [];
}

class GamePicture {
  final String assetLocation;
  final Map<String, WordLocation> wordToLocations;

  GamePicture({required this.assetLocation, required this.wordToLocations});
}

class WordLocation {
  final double x;
  final double y;

  WordLocation({required this.x, required this.y});
}
