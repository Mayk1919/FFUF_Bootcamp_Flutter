void main(){
  Function addTwoNumbers = (int a, int b){
    int sum = a+b;
    print(sum);
  };

  var multiplyByFive = (int number){
    return number *5;
  };


  addTwoNumbers (1,1);



  void someFunction(String message, Function myFunction){
    print(message);
    myFunction(3,4);
  }
  Function addNumbers = (int a, int b) => print(a + b);

  someFunction('hello', addNumbers);





  Function taskToPerform(){
    Function multiplyByFour = (int number) => number * 4;
    return multiplyByFour;
  }

  var myFunc = taskToPerform();

  print(myFunc(10));



  String message = 'Dart is good';
  Function showMessage = (){
    message = 'Dart is awesome';
    print (message);
  };
  showMessage();

  Function talk = (){
    String msg = 'Hi';

    Function say = (){
      msg = 'Hello';
      print(msg);
    };
    return say;
  };

  var speak = talk();
  speak();


}