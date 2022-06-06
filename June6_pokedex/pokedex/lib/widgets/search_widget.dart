import 'package:flutter/material.dart';

class SearchWIdget extends StatelessWidget {
  const SearchWIdget(
      {Key? key,
      required this.searchBoxHint,
      required this.searchCallback,
      required this.searchFilter,
      required this.onChangeCallback})
      : super(key: key);

  final String searchBoxHint;
  final void Function(String) searchCallback;
  final TextEditingController searchFilter;
  final void Function(String) onChangeCallback;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      onChanged: onChangeCallback ?? (text) {},
      controller: searchFilter,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          prefixIcon: const Icon(Icons.search),
          hintText: searchBoxHint),
    );
  }
}
