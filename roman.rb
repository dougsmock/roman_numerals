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

def arabic(romans)
   letters = %w[XL L IX X IV V I]
   values = [40, 50, 9, 10, 4, 5, 1]
   arabic_num = letters.zip values
   number = 0
   arabic_num.each do |v|
        number += v[1] * romans.scan(/#{v[0]}/).count
        romans = romans.sub(/#{v[0]}/, "")
   end
   return number
end