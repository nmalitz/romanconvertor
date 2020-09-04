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
    raise RangeError if arabic_number > 3999 | arabic_number < 1

    roman_string = ''
    roman_values = [
        ['M', 1000],
        ['D', 500],
        ['C', 100],
        ['L', 50],
        ['X', 10],
        ['V', 5],
        ['I', 1]
    ]

    roman_values.each do |pair|
        roman_digit = pair[0]
        value = pair[1]
        roman_string += roman_digit * (arabic_number / value)
        arabic_number %= value
    end
    roman_string
end