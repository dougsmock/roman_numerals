def romanize(number)
    letters = %w[M CM D CD C XC L XL X IX V IV I]
    values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    roman = letters.zip values
    n = number
    numerals = ""
    roman.each do |v|
        numerals += v[0] * (n/v[1])
    n = n%v[1]    

    end
    return numerals
end

def arabic(letters)
    1
   


end







#     letters = %w[ M CM D CD C XC L XL X IX V IV I ]
#     values = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
#     roman = letters.zip values
#     n = number
#     numerals = ""
#     roman.each_with_index do |v,i|
#         numerals += v[0] * (n/v[1])
#     end
#     return numerals
# end




