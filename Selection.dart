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
  selectionSort(a);
  print("Sorted list:\n$a");
}

void selectionSort(var list) {
  int n = list.length;
  for (int i = 0; i <= n - 2; i++) {
    int min = list[i], pos = i;
    for (int j = i + 1; j <= n - 1; j++) {
      if (list[j] < min) {
        min = list[j];
        pos = j;
      }
    }
    swap(list, i, pos);
  }
}

void swap(var list, int a, b) {
  var temp;
  temp = list[a];
  list[a] = list[b];
  list[b] = temp;
}
