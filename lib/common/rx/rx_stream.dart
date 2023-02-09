import 'dart:async';

import 'package:digital14_search/common/common.dart';
import 'package:rxdart/rxdart.dart';

class RxStream<T> extends Stream<T> {
  RxStream({T? defaultValue}) {
    _subject = BehaviorSubject<T>();
    if (defaultValue != null) _subject.add(defaultValue);
    _streamSubscription = _subject.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: false);
  }

  late BehaviorSubject<T> _subject;
  late StreamSubscription<T> _streamSubscription;
  final Map<Function(T event), _ListenerObject<T>> _onDataListeners =
      <Function(T event), _ListenerObject<T>>{};
  T? _lastValue;

  T? get value => _lastValue;

  /// Push new value to the stream.
  void add(T newValue) {
    _subject.add(newValue);
    _lastValue = newValue;
  }

  void _onData(T event) {
    for (final MapEntry<Function(T event), _ListenerObject<T>> l
        in _onDataListeners.entries) {
      l.value.onData(event);
    }
  }

  void _onError(Object er, StackTrace st) {
    try {
      debugPrint('RxStream error: ${er.toString()}');
      debugPrint('RxStream stackTrace: ${st.toString()}');
    } on Exception catch (_) {}
    final List<Function(T event)> removeKeys = <Function(T event)>[];
    for (final MapEntry<Function(T event), _ListenerObject<T>> l
        in _onDataListeners.entries) {
      bool executed = false;
      if (l.value.onError is Function(Object error, StackTrace)) {
        l.value.onError!(er, st);
        executed = true;
      } else if (l.value.onError is Function(Object error)) {
        l.value.onError!(er);
        executed = true;
      }

      if (executed && (l.value.cancelOnError ?? false)) {
        removeKeys.add(l.key);
      }
    }

    if (removeKeys.isNotEmpty) {
      for (final Function(T event) k in removeKeys) {
        _onDataListeners.remove(k);
      }
    }
  }

  void _onDone() {
    for (final MapEntry<Function(T event), _ListenerObject<T>> l
        in _onDataListeners.entries) {
      if (l.value.onDone != null) {
        l.value.onDone!();
      }
    }
    _onDataListeners.clear();
  }

  @override
  StreamSubscription<T> listen(void Function(T event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    if (onData != null && !_onDataListeners.containsKey(onData)) {
      _onDataListeners[onData] = _ListenerObject<T>(
        onData: onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );
    }
    return _streamSubscription;
  }
}

class _ListenerObject<T> {
  _ListenerObject({
    required this.onData,
    this.onError,
    this.onDone,
    this.cancelOnError,
  });

  final Function(T event) onData;
  final Function? onError;
  final void Function()? onDone;
  final bool? cancelOnError;
}
