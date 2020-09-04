def convert_from(roman_digit)
    1000 if roman_digit == 'M'
    500 if roman_digit == 'D'
    100 if roman_digit == 'C'
    50 if roman_digit == 'L'
    10 if roman_digit == 'X'
    5 if roman_digit == 'V'
    1 if roman_digit == 'I'
end

def fromRoman(roman_number)
    if /^[^IVXLCDM]+$/.match(roman_number).nil? == false | roman_number.empty? | roman_number.nil?
        raise TypeError
    end

    roman_character_array = roman_number.split('')
    total = 0
    index = 0
    while index < roman_character_array.length
        left = convert_from(roman_character_array[index])
        right_index = index + 1
        if right_index < roman_character_array.length
            right = convert_from(roman_character_array[right_index])
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
    'I'

    # raise NotImplementedError
end