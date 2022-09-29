// A fib implementation

Fib := Object clone

Fib fib := method(n,
  a := 0
  b := 1

  if(n == 1, return a)
  if(n == 2, return b)

  for(i, 1, n - 2,
    tmp := a + b;
    a := b;
    b := tmp;
  )
) 

Fib _fib_r := method(a, b, n, itr,
  if(n == itr, b, _fib_r(b, a + b, n, itr + 1))
)

Fib fib_r := method(n,
  if(n == 1, return 0)
  if(n == 2, return 1)
  Fib _fib_r(0, 1, n - 2, 0)
)

for(i, 1, 10, Fib fib(i) println)
"" println
for(i, 1, 10, Fib fib_r(i) println)
