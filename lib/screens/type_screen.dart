import 'package:flutter_web/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/type_item.dart';
import '../utils/utils.dart';

class TypesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Types'), centerTitle: true),
        drawer: AppDrawer(),
        body: GridView.count(
            crossAxisCount: 4,
            children: List.generate(types.length, (index) {
              return Center(
                  child: TypeItem(
                      type: types[index],
                      colour: convertHexColour(typeColourHex[index])));
            })));
  }
}
