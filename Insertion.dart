/* 
 * @author Kashikizu
 * Creation Date: 18/04/2024
 * Initial Completion Date: 18/04/24
 */

import 'dart:math';
//import 'dart:io';
/*
 * This is just the algorithm and NOT the final product
*/

void main(List<String> arguments) {
  var a = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  for (int i = 0; i < 10; i++) {
    a[i] = Random().nextInt(100);
  }
  print("Randomly selected list:\n$a");
  insertionSort(a);
  print("Sorted list:\n$a");
}

void insertionSort(var list) {
  int n = list.length;
  for (int i = 1; i <= n - 1; i++) {
    int key = list[i], j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = key;
  }
}
