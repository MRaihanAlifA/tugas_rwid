import 'dart:io';

void main(){
  int input = int.tryParse(stdin.readLineSync()!) ?? 0;
  //print(input);
  if(input % 2 == 0){
    print("genap");
  }else{
    print("ganjil");
  }
}