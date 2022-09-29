// Division override

(1 / 0) println

Number division := Number getSlot("/")
Number / := method(n, if(n == 0, 0, self division(n)))

(1 / 0) println
