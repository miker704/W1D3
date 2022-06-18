def partition(array,num)
    low=[]
    high=[]

    array.each{|val| val<num ? low.push(val) : high.push(val) }
    return [low,high]
end

def merge(hash1,hash2)
    hash3=Hash.new(0)
    hash1.each{|k,v| hash3[k]=v}
    hash2.each{|k,v| hash3[k]=v}

    return hash3
end


# hash_1 = {"a"=>10, "b"=>20}
# hash_2 = {"c"=>30, "d"=>40, "e"=>50}
# p merge(hash_1, hash_2)

def censor(str,censorWords)

censoredStr=[]    

return str.split(" ").map{|word| censorWords.include?(word.downcase) ? censored(word) : word}.join(" ")

end



def censored(word)

vowels="aeiou"

return word.split("").map{|ch| vowels.include?(ch.downcase) ? "*" : ch}.join("")

end

p censor("Gosh darn it", ["gosh", "darn", "shoot"])




def power_of_two?(num)
 prod=1
    while prod<num
        prod*=2
    end

 return prod==num

end
#  p power_of_two?(6)
# p power_of_two?(4096)