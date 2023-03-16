part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = Loading;
  const factory HomePageState.emtyList() = EmptyList;
  const factory HomePageState.loadedList(
      List<String> fruits, List<String> descriptions) = LoadedList;
  const factory HomePageState.error(String message) = Error;
}
