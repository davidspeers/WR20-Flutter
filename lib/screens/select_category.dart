import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trends_with_friends/facades/get_categories.dart';
import 'package:trends_with_friends/widgets/category_tile.dart';

class SelectCategoryPage extends StatefulWidget {
  SelectCategoryPage({Key key}) : super(key: key);

  @override
  _SelectCategoryPageState createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
      ),
      body: FutureBuilder(
          future: getCategories(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return ListView(
              children: snapshot.data
                  .map((category) =>
                      CategoryTile(name: category.name, id: category.id))
                  .toList(),
            );
          }),
    );
  }
}
