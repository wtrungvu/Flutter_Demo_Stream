// * Dart
/*
import 'dart:async';

void main() {
  // ======================== Demo Stream from Future ========================

  /*
  var data = Future<int>.delayed(Duration(seconds: 1), () {
    return 100;
  });

  Stream<int> stream = Stream<int>.fromFuture(data);

  stream.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done");
  });
  */

  // ========================================================================

  // ======================== Demo Stream from Iterable ========================

  /*
  var data1 = Iterable<int>.generate(10, (value){
    return value + 1;
  });
  
  Stream<int> stream1 = Stream<int>.fromIterable(data1);

  stream1.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done");
  });
  */

  // =========================================================================

  // ======================== Demo Stream periodic ========================
  /*
  Stream<int> stream2 = Stream<int>.periodic(Duration(seconds: 1), (value){
    return value;
  });
  
  stream2.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done");
  });
  */
  // ======================================================================

  // ======================== Demo Stream single subscription ========================
  /*
  var data = Future<int>.delayed(Duration(seconds: 1), () {
    return 100;
  });
  
  Stream<int> stream = Stream<int>.fromFuture(data).asBroadcastStream();
  
  stream.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done1");
  });
  
  stream.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done2");
  });
  
  stream.listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done3");
  });
  */

  // =============================================================================

  // ======================== Demo 2 Stream single subscription ========================
  /*
  Stream<int> stream2 = Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  });
  
  var subscription = stream2.take(10).listen((data) {
    print(data.toString());
  }, onDone: () {
    print("done");
  });
  
  Future.delayed(Duration(seconds: 3), () {
    subscription.pause(Future.delayed(Duration(milliseconds: 100), () {
      print("pause");
    }));
  });
  
   Future.delayed(Duration(seconds: 6), () {
    subscription.resume();
    print("resume");
  });
  */

  // ==================================================================================

  // ======================== Demo Stream Controller ========================

  /*
  StreamController<int> controller = StreamController<int>();
  
  controller.stream.listen((data) {
    print(data);
  });
  
  controller.sink.add(100);
  controller.sink.add(200); 
  controller.sink.add(300);
  */

  // =========================================================================

  // ======================== Demo Stream Transformer ========================

  /*
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  });
  
  stream.transform(StreamTransformer.fromHandlers(handleData: (input, sink) {
    var newValue = input + 1;
    sink.add(newValue);
  })).take(10).listen((data) {
    print(data);
  }).onDone((){
    print("Done!");
  });
  */

  // =========================================================================
}
*/