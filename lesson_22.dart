void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  print((restaurants[1]["ratings"] as List).last);

  // this is what i want :
//   [
// {
// name: "Pizza Mario",
// cuisine: "Italian",
// ratings: [4.0, 3.5, 4.5],
// avgRating: 4.0
// },
// {
// name: "Chez Anne",
// cuisine: "French",
// ratings: [5.0, 4.5, 4.0],
// avgRating: 4.5
// },
// {
// name: "Navaratna",
// cuisine: "Indian",
// ratings: [4.0, 4.5, 4.0],
// avgRating: 4.166666666666667
// }
// ]

  for (var restaurant in restaurants) {
    double sum = 0;
    var ratingRestaurant = restaurant["ratings"] as List;
    for (var rating in ratingRestaurant) {
      sum += rating;
    }
    double avgRating = sum / ratingRestaurant.length;
    restaurant["avgRating"] = avgRating;
  }

  print(restaurants);
}
