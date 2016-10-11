function search(word, text) {
  var count = 0;
  text.split(/[,.?]?\s+/).forEach(function(txtWord) {
    if (txtWord.toLowerCase() === word) { count += 1 }
  });

  return count;

}