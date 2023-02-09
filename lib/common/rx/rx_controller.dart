abstract class RxController {
  RxController() : listenerSet = <Function()>{} {
    updateOnRxListen();
  }

  final Set<Function()> listenerSet;

  void updateOnRxListen();

  void update() {
    for (final Function() e in listenerSet) {
      e();
    }
  }

  bool hasListener(Function() onData) {
    return listenerSet.contains(onData);
  }

  bool addListener(Function() onData) {
    bool result = false;
    if (!hasListener(onData)) {
      result = listenerSet.add(onData);
    }
    return result;
  }

  bool removeListener(Function() onData) {
    bool result = false;
    if (hasListener(onData)) {
      result = listenerSet.remove(onData);
    }
    return result;
  }
}
