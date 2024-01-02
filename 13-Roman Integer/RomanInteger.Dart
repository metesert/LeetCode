class Solution {
  int romanToInt(String s) {
    Map<String, int> romanNumerals = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;

    for (int i = 0; i < s.length; i++) {
      String currentSymbol = s[i];
      int currentSymbolValue = romanNumerals[currentSymbol]!;

      // Check if it's the last symbol or the current symbol's value is greater than or equal to the next symbol's value
      if (i == s.length - 1 || romanNumerals[s[i + 1]]! <= currentSymbolValue) {
        result += currentSymbolValue;
      } else {
        // If true, subtract the current symbol's value from the result
        result -= currentSymbolValue;
      }
    }

    return result;
  }
}
