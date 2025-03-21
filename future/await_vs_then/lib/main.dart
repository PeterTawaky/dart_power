void main() async {
  print(await delay()); 
  print('after delay');  //will not be printed until await delay is completed
  delay().then((value) => print(value)); //this will be delayed four seconds
  print('before delay');  //will be printed without waiting then
}

Future<String> delay() {
  return Future.delayed(Duration(seconds: 2), () => 'delayed two seconds');
}
/*  
Summary:
  by using await all program after await will be delayed until await is completed
  but in then the program after it will not be delayed
 */