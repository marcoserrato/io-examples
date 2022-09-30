// A matrix class

Matrix := Object clone
Matrix set := method(x,y,value, matrix at(y) atPut(x, value))
Matrix get := method(x,y, matrix at(y) at(x))

// It seems odd to me to initialize state of an object in a method
// itself and not in the prototype definition.. I must be thinking
// about this wrong.
dim := method(x,y,
  m := Matrix clone()
  m matrix := list() setSize(y)
  for(i, 0, y - 1, m matrix atPut(i, list() setSize(x)))
  m
)

m := dim(5,5)
n := dim(10,10)

m get(4,4) println
m get(1,1) println
m set(1,1, 10)
m get(1,1) println


n get(1,1) println
