class Solution:
    def romanToInt(self, s: str) -> int:
        roman_numerals = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }

        result = 0

        for i in range(len(s)):
            current_symbol_value = roman_numerals[s[i]]
            
            # Check if it's the last symbol or the current symbol's value is greater than or equal to the next symbol's value
            if i == len(s) - 1 or roman_numerals[s[i + 1]] <= current_symbol_value:
                result += current_symbol_value
            else:
                # If true, subtract the current symbol's value from the result
                result -= current_symbol_value

        return result
