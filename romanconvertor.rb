private def convert_from(roman_digit)
    1000 if roman_digit == 'M'
    500 if roman_digit == 'D'
    100 if roman_digit == 'C'
    50 if roman_digit == 'L'
    10 if roman_digit == 'X'
    5 if roman_digit == 'V'
    1 if roman_digit == 'I'
end

def fromRoman(roman_number)
    if /^[^IVXLCDM]+$/.match(roman_number).nil? == false | roman_number.empty?
        raise TypeError
    end

    total = 0
    index = 0
    while index <= roman_number.length
        left = convert_from(roman_number[index])
        if index + 1 <= roman_number.length
            right_index = index + 1
            right = convert_from(roman_number[right_index])
            if left >= right
                total += left
                index += 1
            else
                total += right - left
                index += 2
            end
        else
            total += left
            index += 1
        end
    end
    total
end

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    raise NotImplementedError
end