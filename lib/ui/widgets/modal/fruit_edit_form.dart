import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_application/cubit/fruits/home_page_cubit.dart';
import 'package:fruits_application/localization/ua.dart';

class FruitEditForm extends StatefulWidget {
  const FruitEditForm({
    super.key,
    required this.fruit,
    required this.index,
    required this.description,
    required this.fruits,
  });

  final String fruit;
  final String description;
  final int index;
  final List<String>? fruits;

  @override
  State<FruitEditForm> createState() => _FruitEditFormState();
}

class _FruitEditFormState extends State<FruitEditForm> {
  late final TextEditingController _textControllerTitle;
  late final TextEditingController _textControllerDesc;
  late final HomePageCubit _homePageCubit;
  bool _validate = false;

  @override
  void initState() {
    super.initState();
    _textControllerTitle = TextEditingController();
    _textControllerDesc = TextEditingController();
    _homePageCubit = context.read<HomePageCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _textControllerTitle.text = widget.fruit;
      _textControllerDesc.text = widget.description;
    });
  }

  @override
  void dispose() {
    _textControllerTitle.dispose();
    _textControllerDesc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTextFields(),
        ],
      ),
      actions: [
        _buildButtons(),
      ],
    );
  }

  Widget _buildTextFields() {
    return Column(
      children: [
        _titleTextField(),
        _descriptionTextField(),
      ],
    );
  }

  Widget _titleTextField() {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: LocaleKeys.enterFruitName,
        errorText: _validate ? LocaleKeys.errorEmptyFruitTitle : null,
      ),
      controller: _textControllerTitle,
    );
  }

  Widget _descriptionTextField() {
    return TextField(
      maxLines: 6,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: LocaleKeys.enterFruitDesc,
      ),
      controller: _textControllerDesc,
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _cancelButton(),
        Row(
          children: [
            _clearButton(),
            _saveButton(),
          ],
        ),
      ],
    );
  }

  Widget _cancelButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text(
        LocaleKeys.cancel,
      ),
    );
  }

  Widget _clearButton() {
    return TextButton(
      onPressed: () {
        _textControllerTitle.clear();
        _textControllerDesc.clear();
      },
      child: const Text(
        LocaleKeys.clear,
      ),
    );
  }

  Widget _saveButton() {
    return TextButton(
      onPressed: () {
        _editFruit();
      },
      child: const Text(
        LocaleKeys.save,
      ),
    );
  }

  void _editFruit() {
    final title = _textControllerTitle.text;
    final description = _textControllerDesc.text;

    if (title.isNotEmpty) {
      _homePageCubit.editFruit(widget.index, title, description);
      Navigator.pop(context);
    }
    setState(() {
      title.isEmpty ? _validate = true : _validate = false;
    });
  }
}
