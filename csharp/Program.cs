using System;

namespace csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = Int32.Parse(args[0]);
            foreach (int i in Fib(n)) {
              Console.WriteLine("{0}", i);
            }
        }

        static int[] Fib(int n) {
          int[] result = new int[n];
          int x = 1;
          int y = 1;

          for(int i = 0; i < n; ++i) {
            result[i] = x;
            int tmp = x;
            x = y;
            y = y + tmp;
          }

          return result;
        }
    }
}
