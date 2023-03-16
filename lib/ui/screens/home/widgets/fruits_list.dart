import 'package:flutter/material.dart';
import 'package:fruits_application/localization/ua.dart';
import 'package:fruits_application/style/colors.dart';
import 'package:fruits_application/ui/widgets/divider/divider.dart';
import 'package:fruits_application/ui/widgets/modal/fruit_edit_form.dart';

class FruitsList extends StatelessWidget {
  const FruitsList({
    super.key,
    required this.fruits,
    required this.onSwap,
    this.descriptions,
  });

  final List<String>? fruits;
  final List<String>? descriptions;
  final Function(int index)? onSwap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ListView.builder(
        itemCount: fruits?.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Dismissible(
                key: Key(fruits![index]),
                background: Container(color: ThemeColors.swipeBackground),
                onDismissed: (direction) {
                  onSwap?.call(index);
                  _buildSnackBar(context, index);
                },
                child: _buildSingleFruit(context, index),
              ),
              const CustomDivider(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSingleFruit(BuildContext context, int index) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: () {
          _showFruitName(context, index);
        },
        onLongPress: () {
          _editFruitName(context, index);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            textAlign: TextAlign.center,
            fruits![index],
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  void _buildSnackBar(BuildContext context, int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text('"${fruits![index]}" ${LocaleKeys.deleteFromList}'),
        ),
      ),
    );
  }

  Future _showFruitName(BuildContext context, int index) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            fruits![index],
            textAlign: TextAlign.center,
          ),
          content: Text(
            descriptions![index].isNotEmpty
                ? descriptions![index]
                : LocaleKeys.fruitDescEmpty,
            textAlign: TextAlign.justify,
          ),
        );
      },
    );
  }

  Future _editFruitName(BuildContext context, int index) async {
    showDialog(
      context: context,
      builder: (context) => FruitEditForm(
        fruits: fruits,
        fruit: fruits![index],
        index: index,
        description: descriptions![index],
      ),
    );
  }
}
