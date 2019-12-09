//Sydney Twigg
//M8C3XRSN8
//ITDS221 Assignment Question 3.1.b.

/* Factorial method:
Formula: factorial(n) = n * factorial(n-1)
*/

private static long factorial(int n){
  if (n == 1){
    return 1;
  }
  else{
    return n * factorial(n-1);
  }
}
