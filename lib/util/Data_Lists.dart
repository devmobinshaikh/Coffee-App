import 'package:flutter/material.dart';

final List coffeType = [
  // [coffeName ,true/false]
  ['All', true],
  ['Cappucinno', false],
  ['Latte', false],
  ['Americano', false],
  ['Espresso', false],
  ['Mocha', false],
  ['MilkShake', false]
];

// ======== coffeeTile list=======

List banner = [
  // [image_path ,name,desc,price]
  [
    "assets/images/capachino.jpg",
    'Cappucinno',
    'Enriched Cream Milk',
    '\$3.00',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.5",
    false
  ],
  [
    "assets/images/cold_coffe2.jpg",
    'latte',
    'With Almond Milk',
    '\$4.50',
    "Simple Steps Guarantee Creamy, Velvety Milk and Smooth, High-Quality Foam",
    "4.5",
    false
  ],
  [
    "assets/images/Cappucinno1.jpg",
    'Cappucinno',
    'With Almond Milk',
    '\$3.75',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.0",
    false
  ],
  [
    "assets/images/Americano.jpg",
    'Americano',
    'With Almond Milk',
    '\$2.00',
    "An americano is quite simply just hot water and espresso.",
    "4.5",
    false
  ],
  [
    "assets/images/milk.jpg",
    'Milk',
    'Carmelly ',
    '\$1.50',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.1",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Fruity and blackberry',
    "\$2.50",
    "When you’re presented with an americano, you’ll be forgiven for thinking it’s just your standard, run of the mill black coffee.",
    "4.1",
    false
  ],
  [
    "assets/images/cold_coffe2.jpg",
    'Cold-Coffee',
    'With Almond Milk',
    '\$3.50',
    "The beans are from the plant species called Coffee Arabica, and it was originally only grown",
    "4.0",
    false
  ],
  [
    "assets/images/Cappucinno2.jpg",
    'Cappucinno',
    'With Almond Milk',
    '\$8.50',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.9",
    false
  ],
  [
    "assets/images/latte1.jpg",
    'latte',
    'Woody wet cardboard',
    '\$2.50',
    "Simple Steps Guarantee Creamy, Velvety Milk and Smooth, High-Quality Foam",
    "4.6",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Bitter flavor ',
    '\$2.50',
    "An americano is quite simply just hot water and espresso.",
    "4.2",
    false
  ],
  [
    "assets/images/mocha.jpg",
    'Mocha',
    'Smoky aroma ',
    '\$1.50',
    "Deliciously sweet,nutty and chocolatey. ",
    "4.5",
    "false"
  ],
  [
    "assets/images/mocha1.jpg",
    'Mocha',
    'notes of cardboard',
    '\$0.99',
    "Deliciously sweet, nutty and chocolatey.",
    "4.4",
    false
  ],
  [
    "assets/images/Americano2.jpg",
    'Americano',
    'Black Currant-like',
    '\$2.50',
    "When you’re presented with an americano, you’ll be forgiven for thinking it’s just your standard, run of the mill black coffee.",
    "4.6",
    false
  ],
  [
    "assets/images/Espresso.jpg",
    'Espresso',
    'With Almond Milk',
    '\$5.25',
    "Espresso Macchiato which is equal parts espresso and foamed milk, without the steamed milk. Macchiatos are sometimes called \"Dry Cappuccinos",
    "4.7",
    false
  ],
  [
    "assets/images/cold_coffee.jpg",
    'Cold-Coffee',
    'Fruity lemon ',
    '\$8.30',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.9",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Smoky aroma ',
    '\$2.50',
    "An americano is quite simply just hot water and espresso.",
    "3.9",
    false
  ],
  [
    "assets/images/mocha2.jpg",
    'Mocha',
    'With Almond Milk',
    '\$7.50',
    "Deliciously sweet, nutty and chocolatey.",
    "4.3",
    false
  ],
  [
    "assets/images/milkshake.jpg",
    'MilkShake',
    'Chocolaty aroma ',
    '\$1.50',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.1",
    false
  ],
  [
    "assets/images/milkshake1.jpg",
    'MilkShake',
    'dark chocolate',
    '\$0.99',
    "The beans are from the plant species called Coffee Arabica, and it was originally only grown",
    "4.2",
    false
  ],
].toList();

final List Special_coffe = [
  [
    "assets/images/milk.jpg",
    'Milk',
    'Carmelly ',
    '\$1.50',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.1",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Fruity and blackberry',
    "\$2.50",
    "When you’re presented with an americano, you’ll be forgiven for thinking it’s just your standard, run of the mill black coffee.",
    "4.1",
    false
  ],
  [
    "assets/images/cold_coffe2.jpg",
    'Cold-Coffee',
    'With Almond Milk',
    '\$3.50',
    "The beans are from the plant species called Coffee Arabica, and it was originally only grown",
    "4.0",
    false
  ],
  [
    "assets/images/Cappucinno2.jpg",
    'Cappucinno',
    'With Almond Milk',
    '\$8.50',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.9",
    false
  ],
  [
    "assets/images/latte1.jpg",
    'latte',
    'Woody wet cardboard',
    '\$2.50',
    "Simple Steps Guarantee Creamy, Velvety Milk and Smooth, High-Quality Foam",
    "4.6",
    false
  ]
];

final List Cappucinno = [
  // [imagepath,coffename,short_desc,price,full desc,rating]
  [
    "assets/images/capachino.jpg",
    'Cappucinno',
    'Enriched Cream Milk',
    '\$3.00',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.5",
    false
  ],
  [
    "assets/images/Cappucinno1.jpg",
    'Cappucinno',
    'With Almond Milk',
    '\$3.75',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.0",
    false
  ],
  [
    "assets/images/Cappucinno2.jpg",
    'Cappucinno',
    'With Almond Milk',
    '\$8.50',
    "The location of the steam wand that causes a layer of foam to begin forming atop the milk ",
    "4.9",
    false
  ],
];
final List Latte = [
  [
    "assets/images/cold_coffe2.jpg",
    'latte',
    'With Almond Milk',
    '\$4.50',
    "Simple Steps Guarantee Creamy, Velvety Milk and Smooth, High-Quality Foam",
    "4.5",
    false
  ],
  [
    "assets/images/latte1.jpg",
    'latte',
    'Woody wet cardboard',
    '\$2.50',
    "Simple Steps Guarantee Creamy, Velvety Milk and Smooth, High-Quality Foam",
    "4.6",
    false
  ],
];
final List Americano = [
  [
    "assets/images/Americano.jpg",
    'Americano',
    'With Almond Milk',
    '\$2.00',
    "An americano is quite simply just hot water and espresso.",
    "4.5",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Fruity and blackberry',
    "\$2.50",
    "When you’re presented with an americano, you’ll be forgiven for thinking it’s just your standard, run of the mill black coffee.",
    "4.1",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Bitter flavor ',
    '\$2.50',
    "An americano is quite simply just hot water and espresso.",
    "4.2",
    false
  ],
  [
    "assets/images/Americano2.jpg",
    'Americano',
    'Black Currant-like',
    '\$2.50',
    "When you’re presented with an americano, you’ll be forgiven for thinking it’s just your standard, run of the mill black coffee.",
    "4.6",
    false
  ],
  [
    "assets/images/Americano1.jpg",
    'Americano',
    'Smoky aroma ',
    '\$2.50',
    "An americano is quite simply just hot water and espresso.",
    "3.9",
    false
  ],
];
final List Espresso = [
  [
    "assets/images/Espresso.jpg",
    'Espresso',
    'With Almond Milk',
    '\$5.25',
    "Espresso Macchiato which is equal parts espresso and foamed milk, without the steamed milk. Macchiatos are sometimes called \"Dry Cappuccinos",
    "4.7",
    false
  ],
];
final List Mocha = [
  [
    "assets/images/mocha.jpg",
    'Mocha',
    'Smoky aroma ',
    '\$1.50',
    "Deliciously sweet, nutty and chocolatey. ",
    "4.5",
    false
  ],
  [
    "assets/images/mocha1.jpg",
    'Mocha',
    'notes of cardboard',
    '\$0.99',
    "Deliciously sweet, nutty and chocolatey.",
    "4.4",
    false
  ],
  [
    "assets/images/mocha2.jpg",
    'Mocha',
    'With Almond Milk',
    '\$7.50',
    "Deliciously sweet, nutty and chocolatey.",
    "4.3",
    false
  ],
];
final List MilkShake = [
  [
    "assets/images/milk.jpg",
    'Milk',
    'Carmelly ',
    '\$1.50',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.1",
    false
  ],
  [
    "assets/images/cold_coffe2.jpg",
    'Cold-Coffee',
    'With Almond Milk',
    '\$3.50',
    "The beans are from the plant species called Coffee Arabica, and it was originally only grown",
    "4.0",
    false
  ],
  [
    "assets/images/cold_coffee.jpg",
    'Cold-Coffee',
    'Fruity lemon ',
    '\$8.30',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.9",
    false
  ],
  [
    "assets/images/milkshake.jpg",
    'MilkShake',
    'Chocolaty aroma ',
    '\$1.50',
    "combined with a chocolate powder or syrup, followed by milk or cream.",
    "4.1",
    false
  ],
  [
    "assets/images/milkshake1.jpg",
    'MilkShake',
    'dark chocolate',
    '\$0.99',
    "The beans are from the plant species called Coffee Arabica, and it was originally only grown",
    "4.2",
    false
  ],
];
