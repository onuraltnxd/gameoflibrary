import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/themes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Provider.of<ThemeProvider>(context).isDarkMode
                    ? Icons.wb_incandescent
                    : Icons.nights_stay,
                color: Theme.of(context).colorScheme.onSecondary,
                size: 34,
              ),
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
          ],
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.onSecondary,
                size: 34,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          scrolledUnderElevation: 0,
          toolbarHeight: 75,        
          title: Text(
            "Game of Library",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              accountName: const Text("Onur Altun"),
              accountEmail: const Text('onuraltun@gmail.com'),

              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.sports_esports),
              title: const Text('Oyunlar'),
              onTap: () => context.push("/oyun"),
            ),
            ListTile(
              leading: const Icon(Icons.newspaper,
              ),
              title: const Text('Oyun Haberleri'),
              onTap: () => context.push("/haber"),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Yılın Oyunları'),
              onTap: () => context.push("/goty"),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış Yap'),
              onTap: () => context.push("/login"),
            ),                      
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Oyunlar",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () => context.push("/oyun"),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/oyunlar.jpg',
                      width: 300,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Oyun Haberleri",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () => context.push("/haber"),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/gta66.jpg',
                      width: 300,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Yılın Oyunları",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () => context.push("/goty"),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/gameawards.jpg',
                      width: 300,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),             
              const SizedBox(height: 3),
            ],
          ),
        ),
      ),
    );
  }
}
