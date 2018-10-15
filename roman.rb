# letter_values = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }

# combos = { "IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CD" => 400, "CM" => 900 }

def romanize(number)
    letters = %w[IX V IV I]
    values = [9, 5, 4, 1]
    roman = letters.zip values
    n = number
    numerals = ""
    roman.each do |v|
        numerals += v[0] * (n/v[1])
    n = n%v[1]    

    end
    return numerals
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




