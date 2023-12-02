import 'dart:math';

void main(List<String> arguments) {
  var a1 = [
    700,
    32,
    964,
    614,
    896,
    295,
    324,
    925,
    415,
    976,
    869,
    894,
    247,
    896,
    788,
    681,
    396,
    120,
    475,
    191,
    431,
    598,
    351,
    538,
    975,
    47,
    125,
    769,
    580,
    626,
    76,
    803,
    821,
    55,
    702,
    2,
    109,
    730,
    313,
    326,
    114,
    499,
    990,
    276,
    432,
    385,
    40,
    906,
    277,
    36,
    778,
    545,
    874,
    102,
    742,
    570,
    280,
    270,
    908,
    509,
    172,
    326,
    705,
    502,
    604,
    628,
    935,
    947,
    574,
    406,
    142,
    850,
    283,
    224,
    929,
    84,
    409,
    696,
    277,
    207,
    701,
    443,
    724,
    443,
    502,
    427,
    527,
    99,
    784,
    363,
    235,
    331,
    229,
    780,
    843,
    478,
    853,
    25,
    617,
    38
  ];
  List<String> members = [
    "Ali Akbari",
    "Sara Hosseini",
    "Mohammad Nori",
    "Mahdiye Rostami",
    "Javad Shojai",
    "Fateme Rahimi",
    "Maryam Khademi",
    "Amirhossein Razavi",
    "Saeed Hosseini",
    "Safora Karimi",
    "Pegah Ghasemi",
    "Hamidreza Sadeghi",
    "Morteza Rahmani",
    "Narges Abedi",
    "Hossein Shirazi",
    "Mansoureh Moradi",
    "Emad Bakhshayesh",
    "Shahab Hosseini",
    "Mahsa Mahmoudi",
    "Ahmadreza Ghasemi"
  ];
//TODO 1
  print(sumNumber(a1));
  sumNumber2(a1);
  //TODO 2
  print(SumOddNumber(a1));
  SumOddNumber2(a1);
  //TODO 3
  print(sumPrimeNember(a1));
  sumPrimeNumber2(a1);
  //TODO 4
  abbreviationName(members);
  print(abbreviationName2(members));
  NumberPlus(numbersString);
  // ArmNumber();
}

//TODO 1/1
/// pls write  function void and recursive code for sum all number in  array [a1]

int sumNumber(List<int> a1) {
  var sum = 0;
  for (var number in a1) {
    sum += number;
  }
  return sum;
}

//TODO 1/2
void sumNumber2(List<int> a1) {
  var sum = 0;
  for (var number in a1) {
    sum += number;
  }
  print(sum);
}

//TODO 2/1
// pls write  function void and recursive code for sum all odd number in  array [a1]

int SumOddNumber(List<int> a1) {
  var sum = 0;

  for (var number in a1) {
    if (number % 2 == 0) {
      sum += number;
    }
  }
  return sum;
}

//TODO 2/2
void SumOddNumber2(List<int> a1) {
  var sum = 0;
  for (var number in a1) {
    if (number % 2 == 0) {
      sum += number;
    }
  }
  print(sum);
}

//TODO 3/1
// pls write function void and recursive code for sum all Prime Number in  array [a1]

bool isPrimeNumber(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

int sumPrimeNember(List<int> a1) {
  var sum = 0;
  for (var number in a1) {
    if (isPrimeNumber(number)) {
      sum += number;
    }
  }
  return sum;
}

//TODO 3/2
void sumPrimeNumber2(List<int> a1) {
  var sum = 0;
  for (var number in a1) {
    if (isPrimeNumber(number)) {
      sum += number;
    }
  }
  print(sum);
}

//TODO 4/1
//pls write function  void and recursive for Abbreviation with UpperCase in array[members]
//Sara Hosseini => SH
void abbreviationName(List<String> members) {
  for (var name in members) {
    final firstName = name.split(' ').firstOrNull.toString();
    final lastNAme = name.split(' ').lastOrNull.toString();
    final f1 = firstName.split('').firstOrNull;
    final f2 = lastNAme.split('').firstOrNull;

    print('$name=> $f1$f2');
  }
}

//TODO 4/2
String? abbreviationName2(List<String> members) {
  String? reasult;
  for (var name in members) {
    final firstName = name.split(' ').firstOrNull.toString();
    final lastNAme = name.split(' ').lastOrNull.toString();
    final f1 = firstName.split('').firstOrNull;
    final f2 = lastNAme.split('').firstOrNull;
    final reasult = print('$name=> $f1$f2');
  }
  return reasult;
}

//TODO 6/1
////pls write function  void and recursive for this Question
// we want sum all digit number like 123 => 1+2+3 = 6

final numbersInt = 150036;
final numbersString = numbersInt.toString();

void NumberPlus(String numbersString) {
  final seperateNumber = numbersString.split('').toString();
  final replaceNumber = seperateNumber.replaceAll(',', ' +');
  final answer = replaceNumber.replaceAll('[', '');
  final answer2 = answer.replaceAll(']', '');
  int sum = 0;
  for (int i = 0; i < numbersString.length; i++) {
    sum += int.parse(numbersString[i]);
  }
  print('$answer2 => $sum');
}



// void ArmNumber(){
//   for (int num = 1; num <= 10000; num++) {
//     var numString = num.toString();
//     int sum = 0;
//     int num2 = num;
//
//     while (num2 > 0) {
//       int digit = num2 % 10;
//       sum += pow(digit, numString.length).toInt();
//       num2 ~/= 10;
//     }
//
//     if (num == sum) {
//       print(num);
//     }
//   }
// }


//TODO 5
/* عدد آرمسترانگ
 //pls write function

  عدد آرامسرانگ عددی است که اگر اجزای آن به توان طول عددمون کنیم و جمع کنیم باز هم همان عدد را
  بهمون میده!
  مثال :  153
  1^3 + 5^3 + 3^3 =153
  (  ☝️این عدد آرمسترانگ است)

  حالا چگونه  اعداد آرامسترانگ بین 1 تا 10,000
  را پیدا کنیم؟؟*/


