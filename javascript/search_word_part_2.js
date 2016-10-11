function searchWord(word, text) {
  var rgx = new RegExp(word, "gi")
  return text.replace(rgx, function(txtWord) {
    return "**" + txtWord.toUpperCase() + "**";
  });
}