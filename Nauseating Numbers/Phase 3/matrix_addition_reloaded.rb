# matrix_addition_reloaded
# Write a method matrix_addition_reloaded that accepts any number of matrices 
# as arguments. The method should return a new matrix representing the sum of 
# the arguments. Matrix addition can only be performed on matrices of similar
#  dimensions, 
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


# def matrix_length_check(mats)
#     # p mats
#     base_length=mats[0].length
#     # p base_length 
# return mats.all?{|subArr| subArr.length==base_length}

# end

def matrix_addition_reloaded(*mats)


matrix=mats.first
height= matrix.length
width= matrix[0].length

empty_matrix= Array.new(height){Array.new(width)}
matrices.inject(empty_matrix)

end


matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil