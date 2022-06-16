import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.searchBoxHint,
    this.searchCallback,
    this.searchFilter,
    this.onChangeCallback,
  }) : super(key: key);

  final String? searchBoxHint;
  final void Function(String)? searchCallback;
  final TextEditingController? searchFilter;
  final void Function(String)? onChangeCallback;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      onChanged: onChangeCallback ?? (text) {},
      controller: searchFilter,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: searchBoxHint,
      ),
      onSubmitted: searchCallback,
    );
  }
}
