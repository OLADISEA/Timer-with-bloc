class Ticker{
  Ticker();
  Stream<int> tick({required int ticks}){
    return Stream.periodic(Duration(seconds: 1),(events)=>ticks-events-1).take(ticks);
  }
}