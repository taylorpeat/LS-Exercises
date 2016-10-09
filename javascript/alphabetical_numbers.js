var NUMBER_WORDS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
                     "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
                     "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];

function alphabeticNumberSort(numbers) {

  numbers = numbers.map(function(number) {
    return NUMBER_WORDS[number];
  });

  numbers.sort();

  return numbers.map(function(word) {
    return NUMBER_WORDS.indexOf(word);
  });

}