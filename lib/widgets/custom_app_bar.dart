import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget _buildLeadingWidget(BuildContext context) {
    if (title == 'Profile') {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
    } else {
      return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: _buildLeadingWidget(context),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: SearchDelegateExample());
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      elevation: 10.0,
      centerTitle: true,
    );
  }
}

class SearchDelegateExample extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Searching for $query...'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = [
      'Taha Ali',
      'FAST NUCES',
      'Karachi',
      'Sanan Baig'
    ];

    final List<String> filteredSuggestions = query.isEmpty
        ? []
        : suggestions
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(filteredSuggestions[index]),
          onTap: () {
            close(context, filteredSuggestions[index]);
          },
        );
      },
    );
  }
}
