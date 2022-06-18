# matrix_addition
# Let a 2-dimensional array be known as a "matrix".
#  Write a method matrix_addition that accepts two matrices
#   as arguments. The two matrices are guaranteed to have the same 
#   "height" and "width". The method should return a new matrix representing 
#   the sum of the two arguments. To add matrices, we simply add the values at
#    the same positions:
# programmatically
# [[2, 5], [4, 7]] + [[9, 1], [3, 0]] => [[11, 6], [7, 7]]

# structurally
# 2 5  +  9 1  =>  11 6
# 4 7     3 0      7 7


def matrix_addition(mat1,mat2)
    # res=[]
    # temp=[]
    # i=0
    # while i<mat1.length
    # j=0
    
    

    # while j<mat1[i].length
       

    #     temp.push(mat1[i][j]+mat2[i][j])
 
    # j+=1
    # end
    # res.push(temp)

    # temp=[]
    # i+=1
    # end


    # return res
    height=mat1.length
    width=mat1[0].length
    res=Array.new(height){Array.new(width)}
    (0...height).each do |row|
        (0...width).each do |col|
        res[row][col]=mat1[row][col]+mat2[row][col]
        end
    end
    


return res
end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]



p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]