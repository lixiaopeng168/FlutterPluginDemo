import 'package:event_bus/event_bus.dart';

/**
 * @Author: lxp
 * @Description:
 * @Date: 2020/7/18 1:27 PM
 */
class EventBusUtil {
  static EventBus _eventBus;

  static EventBus getInstance() {
    if (_eventBus == null) {
      _eventBus = new EventBus();
    }
    return _eventBus;
  }


}
