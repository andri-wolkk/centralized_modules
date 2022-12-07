import 'package:wolkk_core/wolkk_core.dart';

class Transformer {
  static const duration = Duration(milliseconds: 300);

  static EventTransformer<Event> debounce<Event>(Duration duration) {
    return (events, mapper) => events.debounce(duration).switchMap(mapper);
  }

  static EventTransformer<Event> getEvent<Event>() {
    return debounce(duration);
  }
}
