part of '../union_widget.dart';

/*
  Create Simple Union2, Union3, Union4 ,.... unionN

  // The Union object , can be hold the value.
  // The hold value can be different type like (String,num,bool).
  //

  */
void createUnion() {
  Union1<String> un = 'Ram'.asFirst();

  print(un.value);

  Union2<int, String> un2;
  un2 = 1.asFirst();
  un2 = 'Ram'.asSecond();

  print(un2.value);

  Union3<int, String, bool> un3;
  un3 = 1.asFirst();
  un3 = 'Prakash'.asSecond();
  un3 = true.asThird();

  // un3 = true.asFirst() :- compile time error :- First value is Integer
  print(un3.value);
}

/*
 * Type Union store current value type
 */
void getUnionType() {
  Union2<int, String> un = 1.asFirst();

//Way:1  First:-
  if (un.value is int) {
    print('String value is : ${un.value}');
  } else {
    print('Integer value is: ${un.value}');
  }

  //Way:2 Using switchcase

  un.switchCase((intValue) {
    print('String value: $intValue');
  }, (stringValue) {
    print('String value: $stringValue');
  });
}

/*
Compare two union value
 */
void compareTwoUnion() {
  Union1<String> un = 'Prakash'.asFirst();
  Union1<String> un1 = 'Prakash'.asFirst();

  print(un == un1); // false:- Union don't override == operator
  print(un.value == un1.value); //true:- we have to compare value
}

/*
 * How we Assign one Union value to other object
 */
void copyTwoUnionValue() {
  Union2<int, String> un = 1.asFirst();
  Union3<int, String, bool> un2 = un; // UpCasting would work

  //Union1<int> un1 = un; //Error :- Down Cast would not ;

  Union2<String, int>
      un2New; // We can't assign un to un2New bcz data type first and second is different
}

/*
 *  How we copy one Union object to other
 */
void joinOperation() {
  Union2<int, String> un = 1.asFirst();

  Union2<String, int> un2;

  un2 = un.join((value) => value.asSecond(), (value) => value.asFirst());
}
