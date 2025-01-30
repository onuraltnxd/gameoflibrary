import 'package:flutter/material.dart';
import 'package:flutter_app/app/themes.dart';
import 'package:flutter_app/views/app_view.dart';
import 'package:provider/provider.dart';

class HaberScreen extends StatelessWidget {
  const HaberScreen({super.key});

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
                    ? Icons.light_mode
                    : Icons.dark_mode,
                color: Theme.of(context).colorScheme.onSecondary,
                size: 34,
              ),
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
          ],
          scrolledUnderElevation: 0,
          toolbarHeight: 75,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "Oyun Haberleri",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                buildGameRow(context, [
                  {"name": "Ubisoft stüdyo kapattı! Çalışanlar evlerine dönüyor","image": "assets/images/haber1.jpg", "description": "Son dönemlerde adını sıkça duyduğumuz ve oyun dünyasının önde gelen şirketlerinden Ubisoft, bir kez daha geniş çaplı işten çıkarmalarla gündemde. Şirket, çoğunluğu Avrupa’da olmak üzere toplam 185 çalışanını işten çıkaracağını ve bir stüdyosunu tamamen kapatacağını duyurdu."}, 
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "PlayStation özel oyunu nihayet PC’ye geliyor!", "image": "assets/images/haber2.jpg", "description": "Capcom imzası taşıyan Resident Evil 4, seriyi yeni bir boyuta taşıdı. Yenilikçi kamera açıları ve derin hikayesiyle korku ve aksiyon türlerini ustaca harmanladı."},  
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Osman Gazi oyunu Nintendo Switch platformunda!","image": "assets/images/haber3.jpg", "description": "Bethesda Game Studios'un başyapıtı Oblivion, geniş özgürlük ve etkileşim imkanları sunan bir açık dünya RPG deneyimiydi. Görevler ve zengin hikaye, oyuncuları büyüledi."},
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "RDR 2, GTA 5 ve dahası! Steam’de yüz güldüren indirimler başladı","image": "assets/images/haber4.jpg", "description": "2K Games ve Irrational Games işbirliğiyle geliştirilen BioShock, Rapture adlı şehirde geçen distopik bir macera sunuyordu. Yaratıcı silah ve güç mekanikleri, oyunu diğerlerinden ayırıyordu."}, 
                ]),    
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Dünyanın ilk modüler Windows el konsolu tanıtıldı!","image": "assets/images/haber5.jpg", "description": "AYANEO, düzenlediği etkinlikte dünyanın ilk modüler Windows el konsolu olan AYANEO 3 modelini resmen tanıttı. LCD ve OLED ekran seçeneklerine sahip olan cihaz, farklı işlemci ve bellek konfigürasyonları ile karşımıza çıktı. Fiyatlar 4999 yuan’dan (yaklaşık 690 dolar) başlıyor."}, 
                ]),        
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Assassin’s Creed Shadows basına oynatıldı: Oyun beğenildi!","image": "assets/images/haber6.jpg", "description": "Son yılların en tartışmalı ve çalkantılı firmalarından Ubisoft, iki kere ertelediği Assassin’s Creed Shadows için bir basın gösterimi düzenledi. Yaklaşık 3 saat boyunca oyun basınına oyunu deneten Ubisoft, oldukça iyi geri dönüşler almış gibi duruyor. Şirket, bu geri dönüşler devam ederse makus talihini yenecek gibi görünüyor."}, 
                ]),           
                
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget buildGameRow(BuildContext context, List<Map<String, String>> games) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: games.map((game) {
        return buildGameItem(context, game['image']!, game['name']!,game['description']!);
      }).toList(),
    );
  }

  Widget buildGameItem(
      BuildContext context, String fotograf, String isim, String description) {
    return Container(
      width: 375,
      height: 550,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              fotograf,
              fit: BoxFit.contain,
              height: 255,
              width: 400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            isim,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 38),      
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
