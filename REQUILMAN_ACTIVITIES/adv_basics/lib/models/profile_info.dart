class ProfileInfo {
  const ProfileInfo(this. text, this.info);

  final String text;
  final List<String> info;

  List<String> getShuffledList() {
    final shuffledList = List.of(info);
    shuffledList.shuffle();

    return shuffledList;
  }
}