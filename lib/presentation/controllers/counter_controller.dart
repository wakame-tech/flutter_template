import 'package:flutter_riverpod/all.dart';
import 'package:flutter_template/domain/counter/counter_state.dart';

final counterProvider = StateNotifierProvider((ref) => CounterController(ref.read));

class CounterController extends StateNotifier<CounterState> {
  CounterController(this._reader): super(CounterState());

  final Reader _reader;

  Future increment() async {
    state = state.copyWith(count: state.count + 1);
  }
}