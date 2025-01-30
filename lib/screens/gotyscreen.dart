import 'package:flutter/material.dart';
import 'package:flutter_app/app/themes.dart';
import 'package:flutter_app/views/app_view.dart';
import 'package:provider/provider.dart';

class GotyScreen extends StatelessWidget {
  const GotyScreen({super.key});

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
              "Yılın Oyunları",
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
                  {"name": "2004 - GTA San Andreas: Özgürlüğün Şehrinde Kaotik Bir Macera", "skor": "SCORMETA : 95", "image": "assets/images/gtasan.jpg", "description": "Rockstar North tarafından geliştirilen GTA San Andreas, oyun dünyasının klasikleri arasında yer alıyor. Özgür bir şehirde geçen kaotik bir macera, serbest dolaşım ve yoğun hikayesiyle oyunseverleri etkiledi"}, 
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "2005 - Resident Evil 4: Korku ve Aksiyonun Zirvesi", "skor": "SCORMETA : 96", "image": "assets/images/re4.jpg", "description": "Capcom imzası taşıyan Resident Evil 4, seriyi yeni bir boyuta taşıdı. Yenilikçi kamera açıları ve derin hikayesiyle korku ve aksiyon türlerini ustaca harmanladı."},  
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "2006 - The Elder Scrolls IV: Oblivion: Açık Dünya RPG Deneyimi", "skor": "SCORMETA : 94", "image": "assets/images/elder.jpg", "description": "Bethesda Game Studios'un başyapıtı Oblivion, geniş özgürlük ve etkileşim imkanları sunan bir açık dünya RPG deneyimiydi. Görevler ve zengin hikaye, oyuncuları büyüledi."},
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "2007 - BioShock: Distopik Bir Başyapıt", "skor": "SCORMETA : 96", "image": "assets/images/bioshock.jpg", "description": "2K Games ve Irrational Games işbirliğiyle geliştirilen BioShock, Rapture adlı şehirde geçen distopik bir macera sunuyordu. Yaratıcı silah ve güç mekanikleri, oyunu diğerlerinden ayırıyordu."}, 
                ]),           
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "2008 - Grand Theft Auto IV: Özgür Dolaşım ve Yoğun Hikaye", "skor": "SCORTMETA : 98", "image": "assets/images/gta4.jpg", "description": "Rockstar North tarafından geliştirilen GTA IV, Liberty City'de geçen yoğun bir hikayeyi oyunculara yaşatıyordu. Niko Bellic'in serüveni, serbestçe keşfedilebilen bir dünyayı sunuyordu."},
                ]),           
                const SizedBox(height: 30),
                 buildGameRow(context, [
                  {"name": "2009 - Uncharted 2: Among Thieves: Hollywood Kalitesinde Bir Macera", "skor": "SCORMETA : 96", "image": "assets/images/uncherted2.jpg", "description": "Naughty Dog imzalı Uncharted 2, Nathan Drake'in maceralarını sinematik bir deneyimle buluşturdu. Hollywood tarzındaki sahneler ve aksiyon dolu oyun mekaniği, oyuncuları ekranlara kilitlemeyi başardı."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [                  
                  {"name": "2010 - Red Dead Redemption: Western Atmosferinde Büyüleyici Bir Deneyim", "skor": "SCORMETA : 95", "image": "assets/images/rdr1.jpg", "description": "Rockstar San Diego tarafından geliştirilen Red Dead Redemption, Western temalı bir açık dünya macerasıydı. John Marston'ın hikayesi, oyuncuları etkileyici bir atmosferde sürükledi."},
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                  {"name": "2011 - The Elder Scrolls V: Skyrim: Büyülü Bir Dünyanın Kapıları Aralanıyor", "skor": "SCORMETA : 96", "image": "assets/images/skyriö.jpg", "description": "Bethesda Game Studios'un efsanevi serisinin bir diğer şaheseri olan Skyrim, büyüleyici bir açık dünya sunuyordu. Ejderhaların hüküm sürdüğü bu epik dünyada, zengin yan görevler ve çeşitli karakter sınıfları oyuncuları derinlemesine bir maceraya davet ediyordu."},                                         
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                  {"name": "2012 - The Walking Dead: Season One: Kararlarınız Hayatta Kalma Şansını Belirliyor", "skor": "SCORMETA : 89", "image": "assets/images/twd.jpg", "description": "Telltale Games tarafından geliştirilen bu oyun, zombi kıyameti sonrasında hayatta kalmaya çalışan bir grup insanın hikayesini anlatıyor. Kararlarınızın oyunun sonunu nasıl etkilediğini görmek, interaktif bir deneyim sunuyordu."},                               
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                   {"name": "2013 - The Last of Us: Duygusal Bir Hayatta Kalma Mücadelesi", "skor": "SCORMETA : 95", "image": "assets/images/tlou1.jpg", "description": "Naughty Dog'un bu şaheseri, post-apokaliptik bir dünyada Joel ve Ellie'nin etkileyici hikayesini anlatıyordu. Derinlemesine karakter gelişimi, atmosfer ve zorlu oyun mekaniği, The Last of Us'u unutulmaz kılan özelliklerdi."},                              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                  {"name": "2014 - Dragon Age: Inquisition: Fantastik Bir Dünyanın Efendisi Olun", "skor": "SCORMETA : 85", "image": "assets/images/dragon.jpg", "description": "Bioware tarafından geliştirilen Dragon Age: Inquisition, Thedas adlı büyülü bir dünyada geçen bir hikaye sunuyordu. Epik hikaye, geniş dünya ve stratejik savaş mekanikleriyle oyunseverlere büyüleyici bir RPG deneyimi yaşatıyordu."},                             
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [   
                  {"name": "2015 - The Witcher 3: Wild Hunt: Geralt'ın Büyülü Dünyasında Keşfe Çıkın", "skor": "SCORMETA : 95", "image": "assets/images/witcher33.jpg", "description": "CD Projekt tarafından geliştirilen bu oyun, Geralt of Rivia'nın devasa açık dünyasında geçen bir hikaye sunuyordu. Büyüleyici hikaye, zengin yan görevler ve etkileyici grafiklerle büyük bir beğeni kazandı."},                               
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [     
                  {"name": "2016 - Overwatch: Takım Oyununun Zirvesi", "skor": "SCORMETA : 91", "image": "assets/images/ow.jpg", "description": "Blizzard Entertainment tarafından geliştirilen bu çok oyunculu FPS, renkli karakterleri ve takım tabanlı oyun mekaniklerini bir araya getiriyordu. Eğlenceli atmosferi ve benzersiz kahraman yetenekleri, Overwatch'i öne çıkaran özelliklerdi."},             
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                   {"name": "2017 - The Legend of Zelda: Breath of the Wild: Hyrule Krallığı'nda Bir Destan", "skor": "SCORMETA : 97", "image": "assets/images/zelda.jpg", "description": "Nintendo'nun efsanevi serisi, Breath of the Wild ile yeni bir soluk kazandı. Açık dünya keşfi, yaratıcı bulmacalar ve etkileyici grafiklerle oyuncuları büyüledi."},              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [ 
                  {"name": "2018 - God of War: Mitolojik Bir Rönesans", "skor": "SCORMETA : 94", "image": "assets/images/goww.jpg", "description": "Santa Monica Studio tarafından geliştirilen God of War, mitolojik hikayesi ve çığır açan kamera açısıyla dikkat çekti. Kratos'un babalık yolculuğu ve özgün savaş mekanikleri, oyunculara unutulmaz bir deneyim sundu."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [ 
                  {"name": "2019 - Sekiro: Shadows Die Twice: Samurayların Dansı", "skor": "SCORMETA : 90", "image": "assets/images/sekiroo.jpg", "description": "FromSoftware tarafından geliştirilen bu zorlu aksiyon oyunu, Sengoku döneminde geçen bir hikaye sunuyordu. Zorlu dövüş mekanikleri, görsel estetik ve benzersiz oyun yapısıyla büyük takdir kazandı."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [  
                  {"name": "2020 - The Last of Us Part II: Derinlemesine Karakter Analizi", "skor": "SCORMETA : 93", "image": "assets/images/tlou2.jpg", "description": "Naughty Dog'un devam oyunu, post-apokaliptik dünyada Ellie'nin mücadelesini anlatıyordu. Derinlemesine karakter analizi, mükemmel oyunculuk ve grafik kalitesiyle dikkat çekti."},                
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                  {"name": "2021 - It Takes Two: Eğlenceli Bir İki Kişilik Macera", "skor": "SCORMETA : 88", "image": "assets/images/ittakes.jpg", "description": "Hazelight Studios'un eşsiz oyunu, iki karakterin birbirine bağlı macerasını konu alıyordu. Eğlenceli bulmacalar ve yaratıcı tasarımıyla dikkat çekti."},              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [   
                  {"name": "2022 - Elden Ring: Mit ve Fantazi Harmanı", "skor": "SCORMETA : 96", "image": "assets/images/elden.jpg", "description": "FromSoftware ve G.R.R. Martin işbirliğiyle geliştirilen bu açık dünya aksiyon RPG, zorlu dövüş mekanikleri ve zengin hikayesiyle oyuncuları kendine çekti. Gelişmiş grafikleri ve büyüleyici atmosferiyle öne çıktı."},                                
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
        return buildGameItem(context, game['image']!, game['name']!, game['skor']!, game['description']!);
      }).toList(),
    );
  }

  Widget buildGameItem(
      BuildContext context, String fotograf, String isim, String skor, String description) {
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
              height: 225,
              width: 250,
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
          Text(
            skor,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
            textAlign: TextAlign.center,            
          ),
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
