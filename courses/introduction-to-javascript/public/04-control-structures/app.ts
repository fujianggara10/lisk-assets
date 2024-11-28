function buildMessage(number) {
  if (number < 5) {
    return 'Number is lower than 5';
  } else if (number > 5) {
    return 'Number is greater than 5';
  }
  // Your code here
}

let message = buildMessage(5);

export { message };
