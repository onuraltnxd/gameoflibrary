import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.light(
    background: Colors.grey[200]!,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.dark(
    background: Colors.grey[800]!,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueGrey,
    textTheme: ButtonTextTheme.primary,
  ),
);


  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Oyun Kütüphanesi',
      theme: _isDarkMode ? _darkTheme : _lightTheme,
      home: HomeScreen(toggleTheme: _toggleTheme),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final Function toggleTheme;

  HomeScreen({required this.toggleTheme});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> games = [
    {'name': 'The Witcher 3', 'genre': 'RPG', 'rating': 9.5},
    {'name': 'Cyberpunk 2077', 'genre': 'RPG', 'rating': 7.0},
    {'name': 'Minecraft', 'genre': 'Survival', 'rating': 8.7},
    {'name': 'Call of Duty', 'genre': 'Shooter', 'rating': 8.3},
  ];

  List<String> favoriteGames = []; 

  void _toggleFavorite(String gameName) {
    setState(() {
      if (favoriteGames.contains(gameName)) {
        favoriteGames.remove(gameName);
      } else {
        favoriteGames.add(gameName); 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oyun Kütüphanesi'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              widget.toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oyunlar',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: games.length,
                itemBuilder: (ctx, index) {
                  final game = games[index];
                  final isFavorite = favoriteGames.contains(game['name']);

                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(game['name']),
                      subtitle: Text('Tür: ${game['genre']}'),
                      trailing: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.grey,
                        ),
                        onPressed: () => _toggleFavorite(game['name']),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
