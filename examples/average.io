// Calculate the average of a list

List myAverage := method(
  if(self size == 0,
     Exception raise("Can't average empty list!"),
     self sum / self size
  )
)

a_list := list(12,16,12,23,19,43,42,16,66,75,3)

a_list myAverage println
a_list average println

list() myAverage
