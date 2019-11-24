

function fib(n) {
    let x = 1;
    let y = 1;
    const out = [];
    for (let i = 0; i < n; i++) {
        out.push(x)
        let tmp = x
        x = y
        y = y + tmp
    }
    return out
}

let n = parseInt(process.argv[2])
fib(n).forEach((x) => {
    console.log(x);
})
