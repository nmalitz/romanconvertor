def convert(roman_digit)
    1000 if roman_digit == 'M'
    500 if roman_digit == 'D'
    100 if roman_digit == 'C'
    50 if roman_digit == 'L'
    10 if roman_digit == 'X'
    5 if roman_digit == 'V'
    1 if roman_digit == 'I'
end

def fromRoman(romanNumber)
    if /^[^IVXLCDM]+$/.match(romanNumber) | ''.match(romanNumber)
        raise TypeError
    end

    total = 0
    index = 0
    while index <= romanNumber.length
        left = convert(romanNumber[index])
        if index + 1 <= romanNumber.length
            right = convert(romanNumber[index + 1])
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
    #raise NotImplementedError
end

def toRoman(arabicNumber)
    # Replace the following line with the actual code!
    raise NotImplementedError
end