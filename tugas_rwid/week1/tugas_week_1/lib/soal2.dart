void main() {
  
  for (int i = 0; i < 100; i++) {
    if(i % 3 == 0 && i % 5 == 0){
      print('Remote Worker Indonesia');
    }else if(i % 3 == 0){
      print('remote');
    }else if(i % 5 == 0){
      print('worker');
    }else{
      print(i);
    }
  }
}