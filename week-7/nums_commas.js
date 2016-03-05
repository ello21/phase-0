// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Ryan Dempsey: .

// Pseudocode
// DEFINE function "separateComma", accepts Integer argument "number"
//   Convert "number" to String

//   IF "number" String has length < 4
//     RETURN "number"
//   ELSE
//     Convert "number" String to Array
//     CREATE "commaNumber" array to hold number with commas

//     SET index_counter1 to 0
//     UNTIL "number" Array length is equal to 0
//       IF index_counter1 modulo by 4 eql 0
//         ADD "," to "commaNumber" array
//         INCREMENT index_counter
//       ELSE
//         PUSH onto "commaNumber" the value at last index of "number" Array
//         INCREMENT index_counter
//     END

//     Convert "commaNumber" Array into String
//     Reverse "commaNumber" String
//     PRINT and RETURN "commaNumber"
// END method


// Initial Solution
// function separateComma(number) {
//   var numberToString = number.toString();
//   //console.log(numberToString);
//   if (numberToString.length < 4) {
//     return number;
//   }
//   else {
//     var numberArray = numberToString.split("");
//     var commaNumber = [];
//     for (var i = 1; numberArray.length > 0; i++) {
//       if (i % 4 === 0) {
//         commaNumber.push(",");
//       }
//       else {
//         commaNumber.push(numberArray.pop());
//       }
//     }
//   }

// return commaNumber.reverse().join("");

// }

// Refactored Solution
//Destructive version of separateComma function
function separateComma(number) {
  var numberToString = number.toString();
  if (numberToString.length < 4) {
    return number;
  }
  else {
  	//convert number to a String, split String into array where
  	// each number is in a separate index, reverse the Array.
    var numberArray = numberToString.split("").reverse();
    //Iterate through the reversed Array. Starting at 0, continue
    // until you reach the 3rd from the last index. At every 3rd
    // index insert comma, then move 4 indexes toward the end and repeat
    for (var i = 0; i < (numberArray.length - 3); i+=4) {
        numberArray.splice((i+3),0,",");
    }
  }
  //Reverse the array with commas, then join it into one String with no space between characters
  return numberArray.reverse().join("");

}


// Your Own Tests (OPTIONAL)
console.log(separateComma(239));
console.log(separateComma(1239000));
console.log(separateComma(22390));
console.log();

/* Reflection
What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?
- In JS I had to keep an eye on at what point I was manipulating a String vs.
an Array. For example, the reverse and join methods are only for Arrays, while the
split method is for Strings.

What did you learn about iterating over arrays in JavaScript?
- I was previously familiar with for loops in JS and was able to refresh
my memory on the loop syntax: for (set loop counter; while condition; increment)

What was different about solving this problem in JavaScript?
- When I did it in Ruby I used regex to find the pattern of every 3 characters,
but here we decided to create a separate Array to push the original numbers onto,
with a comma at every 4th index.

What built-in methods did you find to incorporate in your refactored solution?
- In our original solution we used built-ins methods split, join and reverse.
With split and join we definitely had a few trials before we figured out that
we needed the ("") argument. In the refactored solution I tried a destructive version
where I used the splice method to insert commas into the original Array.
*/