import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_page_state.freezed.dart';
part 'signin_page_state.g.dart';

@freezed
abstract class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    @Default("") String name,
    @Default("") String password,
  }) = _SignInPageState;
  factory SignInPageState.fromJson(Map<String, dynamic> json) => _$SignInPageStateFromJson(json);
}