import 'dart:io';

void main(){
  int saldo = 0;
  while (true) {
    print("masukan no menu");
    print("1.cek saldo");
    print("2.topup saldo");
    print("3.belanja");
    print('0.logout');
    int input = int.tryParse(stdin.readLineSync()!) ?? 9999;
    if (input > 3 || input < 0) {
      print('menu tidak tersedia');
    }else if(input == 0){
      print('logout succeed');
      break;
    }else if(input == 1){
      print('jumlah saldomu $saldo');
    }else if(input == 2){
      print('masukan jumlah topup');
      int topup = int.tryParse(stdin.readLineSync()!) ?? 0;
      saldo += topup;
      print('topupmu berhasil! jumlah saldomu saat ini $saldo');
    }else if(input == 3){
      print('masukan nominal belanja');
      int jumlahBelanja = int.tryParse(stdin.readLineSync()!) ?? 0;
      if (saldo < jumlahBelanja) {
        print('saldo anda tidak mencukupi');
      }else{
        saldo -= jumlahBelanja;
        print('transaksimmu berhasil! jumlah saldomu saat ini $saldo');
      }
    }
  }
}