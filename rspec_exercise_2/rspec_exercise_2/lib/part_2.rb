def palindrome?(str)
    return str==reverseIt(str)
end

def reverseIt(str)
    i=str.length-1
    res=""
    while i>=0
        res+=str[i]
        i-=1
    end
    return res
end



def substrings(str)

res=[]

(0..str.length).each do |i|
(i...str.length).each do |j|
res<<str[i..j]
end
end

return res

end
p substrings("jump")
p substrings("abc")
p substrings("x")


def palindrome_substrings(str)
temp=substrings(str)
return temp.select{|word| palindrome?(word)  && word.length>1}

end
p palindrome_substrings("abracadabra")