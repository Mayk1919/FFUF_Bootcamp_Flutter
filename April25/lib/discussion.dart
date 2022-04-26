
// class A{
//   int? a;
//   int? b;
// final int c = 2;
//
// late int d;
// late final int e;
// }

class A{
  final int xCoordinates;
  final int yCoordinates;

  A({
    this.xCoordinates,
    this.yCoordinates,
});
//   A.fromJson({
//     required Map<String,int> json
// }):
//       xCoordinates =json['x'],
//   yCoordinates =json['y'];
  
  A:zero():
        xCoordinates = 0,
  yCoordinates = 0;
  @override
  String toString() {
    // TODO: implement toString
    return 'A(xCoordinate: ${xCoordinates}, yCoordinate: ${yCoordinates}';
  }
}

void main(){
  // var test = A();
  // print('test a -> ${test.a}');
  // test.b = 10;
  // print('test b -> ${test.b}');


}