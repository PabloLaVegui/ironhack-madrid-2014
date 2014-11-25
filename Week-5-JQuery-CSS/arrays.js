// In each exercice we will print in the console the result.

var sites = ["Google", "Yahoo", "Facebook", "Microsoft", "Apple"];

// The position of "Microsoft" in the array
console.log($.inArray("Microsoft", sites));

// If "LinkedIn" is in the sites array
console.log($.inArray("LinkedIn", sites) !== -1);

// The name of the companies each name in one line
$.each(sites, function(i, element) {
  console.log(element);
});

var pow2 = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024];

// The pow of 2 that is 64
console.log($.inArray(64, pow2));

// The first 10 pow of 2
for (var i = 0; i < 10; i++) {
  console.log(pow2[i]);
}

// Double the value of each element of the array
var m = $.map(pow2, function(element, i) {
  return element * 2;
});
console.log(m);

// Sum the value of all of numbers of the array
var sum = 0;
$.each(pow2, function(i, elem) {
  sum += elem;
});
console.log(sum);

// I want to get the values given by the user but the defalut values in the others
var defaultConfig = {left: 10, top: 20, rigth: 30, bottom: 40};

var myFunction = function (config) {
  return $.extend(defaultConfig, config);
};

console.log(myFunction({left: 20, top: 30}));



