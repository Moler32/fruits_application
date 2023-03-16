import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_application/cubit/fruits/home_page_cubit.dart';

import 'package:fruits_application/localization/ua.dart';
import 'package:fruits_application/ui/screens/home/widgets/fruits_list.dart';
import 'package:fruits_application/ui/widgets/app_bar/home_page.dart';
import 'package:fruits_application/ui/widgets/indicators/circular_indicators.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomePageCubit _homePageCubit;
  @override
  void initState() {
    super.initState();
    _homePageCubit = context.read<HomePageCubit>();
    _homePageCubit.fetchFruits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(
        title: LocaleKeys.fruitsApp,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocConsumer<HomePageCubit, HomePageState>(
      bloc: _homePageCubit,
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
          orElse: () {
            return Container();
          },
        );
      },
      buildWhen: (prev, curr) {
        return curr is Error ||
            curr is LoadedList ||
            curr is EmptyList ||
            curr is Loading;
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const CircularIndicator();
          },
          loadedList: (fruits, descriptions) {
            return FruitsList(
              fruits: fruits,
              descriptions: descriptions,
              onSwap: (index) {
                _homePageCubit.deleteFruit(index);
              },
            );
          },
          emtyList: () {
            return const Center(
              child: Text(LocaleKeys.emptyFruitsList),
            );
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}
