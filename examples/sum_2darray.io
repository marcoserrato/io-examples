// Add all number in s a two-dimensional array

2darray := list(list(1,2,3), list(4,5,6), list(7,8,9))

// Sum should be 45

sum_arr := method(l,
  acc := 0
  l foreach(i, i foreach(j, acc := acc + j))
  acc
)

sum_arr(2darray) println
