#!/usr/bin/env python3

import sys
from itertools import islice

def fib(a=1, b=1):
    while True:
        yield a
        a, b = b, a + b


def main():
    try:
        count = int(sys.argv[1])
    except (IndexError, ValueError):
        print("Error: requres argument 'count'", file=sys.stderr)
        return 1
    for value in islice(fib(), count):
        print(value)
    return 0

if __name__ == "__main__":
    sys.exit(main())


