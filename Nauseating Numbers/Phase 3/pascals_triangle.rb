# pascals_triangle
# Pascal's triangle is a 2-dimensional array with the shape of a pyramid. 
# The top of the pyramid is the number 1. To generate further levels 
# of the pyramid, every element is the sum of the element above and to the 
# left with the element above and to the right. Nonexisting elements are treated
#  as 0 when calculating the sum. For example, here are the first 5 levels of Pascal's triangle:


# 1
# 1 1
# 1 2 1
# 1 3 3 1
# 1 4 6 4 1
# Write a method pascals_triangle that accepts a positive number, n, 
# as an argument and returns a 2-dimensional array representing the first n levels of pascal's triangle.

def pascals_triangle(num)
triangle=[[1]]
if num ==1
return [[1]]
end

while triangle.length !=num
# triangle.push(nextlvl(triangle.last))
nextlevel=[1]
nextlevel+=nextLvl(triangle.last)
nextlevel<<1
triangle.push(nextlevel)
end


return triangle
end


def nextLvl(lvl)
newlvl=[]
lvl.each.with_index{|v,i| i!=lvl.length-1 ? newlvl.push(lvl[i]+lvl[i+1]):next}

return newlvl
end


p pascals_triangle(5)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1]
# ]

p pascals_triangle(7)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1],
#     [1, 5, 10, 10, 5, 1],
#     [1, 6, 15, 20, 15, 6, 1]
# ]