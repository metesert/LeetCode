/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    const romanNumerals = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    };

    let result = 0;
    
    for (let i = 0; i < s.length; i++) {
        const currentSymbolValue = romanNumerals[s[i]];
        const nextSymbolValue = romanNumerals[s[i + 1]];

        // Check if the current symbol's value is less than the next symbol's value
        if (nextSymbolValue > currentSymbolValue) {
            // If true, subtract the current symbol's value from the result
            result += (nextSymbolValue - currentSymbolValue);
            // Skip the next symbol since it has been considered
            i++;
        } else {
            // If false, add the current symbol's value to the result
            result += currentSymbolValue;
        }
    }

    return result;
};
