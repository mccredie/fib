
import Swift;


struct Fib: IteratorProtocol, Sequence {
    var x = 1
    var y = 1

    mutating func next() -> Int? {
        let nextNumber = x

        x = y
        y = y + nextNumber

        return nextNumber
    }
}

let fib = Fib()
var n = Int(CommandLine.arguments[1]) ?? 0
for val in fib {
    if (n <= 0) {
      break
    }
    n = n - 1
    print("\(val)")
}
