class ItemModel {
  final String enname;
  final String jpname;
  final String? image;
  final String voice;
  const ItemModel(
      {required this.enname,
      required this.jpname,
      this.image,
      required this.voice});
}
