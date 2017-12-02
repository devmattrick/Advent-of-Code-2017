const fs = require('fs');

// Read the input.txt file
const inputFile = fs.readFileSync('input.txt').toString();

// Initialize sum variable
let sum = 0;

// Loop through every line of the input file
inputFile.split('\n').forEach((line) => {
  // Split the row on every tab
  const row = line.split('	');

  // If the row is not empty (the line break at the end of the file)
  if (row[0] !== '') {
    // Loop through each number in the row
    row.forEach((num1) => {
      // Loop through each number in the row again
      row.forEach((num2) => {
        // Make sure the number isn't the same
        if (num1 !== num2) {
          // If num1 is divisible by num2
          if (num1 % num2 === 0) {
            // Add num1 / num2 to the sum
            sum += num1 / num2;
          }
        }
      });
    });
  }
});

// Finally! Print the answer!
console.log(sum);
