// Restistors: color-coded bands denoting resistance values:
// Each band has a 1. position and 2. numeric value
// Each color on a band 'maps' to a single number. i.e. brown (1) + green (5) = 15.

// create a program that will take in the values of the bands and output numbers (so each
// time i run, i will not need to remember the numbers.)

// in ruby i'd... 

// bands = { blah, blah, blah}
// def decodedValue(band_1, band_2)
//  return band_1 + band_2
// end

const bands = { 'black': 0, 'brown': 1, 'red': 2, 'orange': 3, 'yellow': 4, 'green': 5, 'blue': 6, 'violet': 7, 'grey': 8, 'white': 9}

export function decodedValue(bands: any): string {
  return `${bands}`
};
