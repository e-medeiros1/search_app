// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListCompany {
  int id;
  String name;
  List? fullList = [];

  ListCompany({
    this.fullList,
    required this.id,
    required this.name,
  });
}
