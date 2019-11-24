package main

import (
  "fmt"
  "os"
  "strconv"
)

func main() {
  c := make(chan int)
  n, _ := strconv.ParseInt(os.Args[1], 0, 64)
  go fib(c)
  for i := int64(0); i < n; i++ {
    fmt.Printf("%d\n", <- c)
  }
}

func fib(c chan int) {
  x, y := 1, 1
  for {
    c <- x
    x, y = y, x + y
  }
}
