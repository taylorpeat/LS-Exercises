function sum(number) {
  number = number + "";
  return number.split("").reduce(function(sum, num) {
    return sum + (+num);
  }, 0);
}