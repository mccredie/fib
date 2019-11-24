use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let count: i32 = args[1].parse::<i32>().unwrap();
    for i in fib(count).iter() {
        println!("{}", i);
    }
}

fn fib(n: i32) -> Vec<i32> {
    let mut a = 1;
    let mut b = 1;
    let mut v = Vec::new();

    for _i in 0..n {
        v.push(a);
        let tmp = a;
        a = b;
        b = b + tmp;
    }
    return v;
}

