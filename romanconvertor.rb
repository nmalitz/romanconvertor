def fromRoman(roman_number)
    if /^[^IVXLCDM]+$/.match(roman_number).nil? == false | roman_number.empty?
        raise TypeError
    end

    roman_digit_dictionary = {
        'M' => 1000,
        'D' => 500,
        'C' => 100,
        'L' => 50,
        'X' => 10,
        'V' => 5,
        'I' => 1
    }
    roman_character_array = roman_number.split(//)
    total = 0
    index = 0
    while index < roman_character_array.length
        left = roman_digit_dictionary[roman_character_array[index]]
        right_index = index + 1
        if right_index < roman_character_array.length
            right = roman_digit_dictionary[roman_character_array[right_index]]
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

def toRoman(arabic_number)
    # Replace the following line with the actual code!
    raise RangeError if arabic_number > 3999
    raise RangeError if arabic_number < 1

    roman_string = ''
    roman_values = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
    }

    roman_values.each do |value, roman_digit|
        roman_string << roman_digit * (arabic_number / value)
        arabic_number %= value
    end
    roman_string
end