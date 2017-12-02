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
    // Get the largest value in the row using reduce
    const largest = row.reduce((prev, current) => Math.max(prev, current));
    // Get the smallest value in the row using reduce
    const smallest = row.reduce((prev, current) => Math.min(prev, current));

    // Add the difference between the largest and smallest value to the sum
    sum += largest - smallest;
  }
});

// Finally! Print the answer!
console.log(sum);
