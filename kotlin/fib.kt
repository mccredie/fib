


fun main(args: Array<String>) {
  for ( x in fib().take(args[0].toInt()) ) {
    println(x)
  }
}

fun fib(): Sequence<Int> {
  return generateSequence(Pair(1, 1)) { Pair(it.second, it.first + it.second) }
    .map { it.first }
}
