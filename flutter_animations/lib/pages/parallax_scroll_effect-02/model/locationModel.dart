class Location{
  final String name;
  final String place;
  final String imageUrl;

  const Location({required this.name, required this.place, required this.imageUrl});
}

const urlPrefix = 'https://docs.flutter.dev/cookbook/img-files/effects/parallax';

const locations = [
  Location(name: 'Mount Rushmore', place: 'U.S.A', imageUrl: '$urlPrefix/01-mount-rushmore.jpg'),
  Location(name: 'Garden By The Bay', place: 'Singapore', imageUrl: '$urlPrefix/02-singapore.jpg'),
  Location(name: 'Mochu Picchu', place: 'Peru', imageUrl: '$urlPrefix/03-machu-picchu.jpg'),
  Location(name: 'Vitznau', place: 'Switzerland', imageUrl: '$urlPrefix/04-vitznau.jpg'),
  Location(name: 'Bali', place: 'Indonesia', imageUrl: '$urlPrefix/05-bali.jpg'),
  Location(name: 'Mexico City', place: 'Mexico', imageUrl: '$urlPrefix/06-mexico-city.jpg'),
];