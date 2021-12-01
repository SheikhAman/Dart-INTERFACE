// Objectives
// 1. Interface
// In dart we can use a class like an interface

// When it is mandatory to override the methods of parent class in child class, we maked Remote class as interface, using implements keyword in child class, When you maked it as interface then it is mandatory to override this methods.
// Interface use korar karon  hoche class r sobgulo method ke override kora onno class a
// In Interface you can implement multiple classes

import 'package:flutter/cupertino.dart';

void main() {
  var tv = Television();
  tv.volumeUp();
  tv.volumeDown();
  tv.justAnotherMethod();
}

class Remote {
  void volumeUp() {
    print('_____Volume Up  from Remote');
  }

  void volumeDown() {
    print('_____Volume Down from Remote');
  }
}

class AnotherClass {
  void justAnotherMethod() {
    // Code
  }
}

// Here Remote Acts as interface
// In inteface you use implement keyword in child class
class Television implements Remote, AnotherClass {
  // In interface you can implement multiple classes
  // Television is child class and Remote is Parent class

  void volumeUp() {
    /*super.volumeUp();*/ // you can only use it if you use inheritance , you can't use it in Interface(using implement keyword)
    print('_____Volumn Up in Television____');
  }

  void volumeDown() {
    print('_____Volumn Down in Television______');
  }

  void justAnotherMethod() {
    // i will  override this method from interface
    print('Some code');
  }
}
