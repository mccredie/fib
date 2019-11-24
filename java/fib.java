import java.io.*;

class Fib {
  public static void main(String[] args) {
    int n = Integer.parseInt(args[0]);
    int fibs[] = fib(n);
    for (int i = 0; i < n; ++i) {
      System.out.printf("%d%n", fibs[i]);
    }
  }

  private static int[] fib(int n) {
    int x = 1, y = 1;
    int resp[] = new int[n];

    for (int i = 0; i < n; ++i) {
      resp[i] = x;
      int tmp = x;
      x = y;
      y = y + tmp;
    }

    return resp;
  }
}
