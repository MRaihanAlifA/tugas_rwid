import 'dart:io';
import 'dart:math';

void main(){
  int rightAnswer = Random().nextInt(100) +1 ;
  //int attempt = 0;
  for (int i = 0;  ;i++) {
    print('masukan angka tebakanmu (angka harus 1-100)');
    int input = int.tryParse(stdin.readLineSync()!) ?? 9999;
    if (input > 100 || input < 1) {
      print('jawabanmu tidak valid');
      break;
    }else if(rightAnswer == input){
      print('selamat jawabanmu benar');
      print('jumlah percobaan : $i');
      break;
    }else if(rightAnswer > input){
      print('jawabanmu lebih kecil dari angkanya');
    }else if(rightAnswer < input){
      print('jawabanmu lebih besar dari angkanya');
    }
  }
}