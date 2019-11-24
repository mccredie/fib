
object Fib {
  def main(args: Array[String]): Unit = {
    for (x <- fib(1, 1).take(args(0).toInt)) {
      println(x)
    }
  }

  def fib(x: Int, y: Int): LazyList[Int] = {
    return x #:: fib(y, x + y)
  }
}
