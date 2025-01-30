import 'package:flutter/material.dart';
import 'package:flutter_app/app/themes.dart';
import 'package:flutter_app/views/app_view.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

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
              "Oyunlar",
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
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
                  {"name": "Cyberpunk 2077", "type": "RPG", "image": "assets/images/cyberpunk.jpg", "description": "Cyberpunk 2077, karanlık bir gelecekte güç, gösteriş ve vücut modifikasyonu çılgınlığına kapılmış Night City kümekentinde geçen bir açık dünya aksiyon macera hikâyesidir."}, 
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Assassin's Creed® Odyssey", "type": "RPG", "image": "assets/images/ac.jpg", "description": "Assassin's Creed Odyssey, olmak istediğiniz kahramanı seçtiğiniz bir aksiyon macera oyunudur. Geçmişin sırlarını ortaya çıkarmak ve Antik Yunanistan'ın kaderini değiştirmek için dışlanmış birinden bir efsaneye dönüşeceğiniz, epik bir yolculuğa çıkın."},  
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Dying Light", "type": "Survival-Zombie-RPG", "image": "assets/images/dl.jpg", "description": "Et peşindeki zombilerin istila ettiği açık dünyada, kıyamet sonrası dönemde geçen, birinci şahıs aksiyon hayatta kalma oyunu. Gizemli bir virüs salgınıyla perişan olmuş şehri keşfet. Erzak ara, silah üret ve marazlı ordularıyla çarpış."},
                ]),
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "2018 - God of War", "type": "Action-RPG", "image": "assets/images/gow.jpg", "description": "Olimpos Tanrılarından aldığı intikamın üzerinden yıllar geçen Kratos, artık İskandinav Tanrılarının ve canavarlarının diyarında sıradan bir insan olarak yaşıyor. Bu sert ve acımasız dünyada hayatta kalabilmek için savaşmak ve oğluna da aynısını öğretmek zorunda."}, 
                ]),           
                const SizedBox(height: 30),
                buildGameRow(context, [
                  {"name": "Minecraft ", "type": "Survival", "image": "assets/images/mc.jpg", "description": "Minecraft'ta oyuncular, voksellerden oluşan neredeyse sonsuz araziye sahip, prosedürel olarak oluşturulmuş, üç boyutlu bir dünyayı keşfederler. Oyuncular ham maddeleri keşfedip çıkarabilir, aletler ve eşyalar üretebilir ve yapılar, toprak işleri ve makineler inşa edebilirler."},
                ]),           
                const SizedBox(height: 30),
                 buildGameRow(context, [
                  {"name": "UNCHARTED™: Hırsızlar Mirası Koleksiyonu", "type": "Adventure-RPG", "image": "assets/images/uncherted.jpg", "description": "Geçmişleriyle yüzleşip kendi miraslarını inşa eden Nathan Drake ve Chloe Frazer'la kendi ayrı maceralarında oynayın. Bu oyun UNCHARTED 4: Bir Hırsızın Sonu ve UNCHARTED: Kayıp Miras'ı içeriyor."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [                  
                  {"name": "The Witcher 3: Wild Hunt", "type": "RPG", "image": "assets/images/witcher3.jpg", "description": "Efsanevi kiralık canavar avcısı Rivialı Geralt rolüne bürünün. Savaştan harap olmuş, dört bir yanı canavarlarla kaplı bir kıta, keşfedilmek üzere sizi bekliyor. Sıradaki sözleşmenizse, dünyayı yeniden şekillendirebilecek güçte bir canlı silahı, Kehanetin Çocuğu Ciri'yi bulmak."},
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                  {"name": "Valheim", "type": "Survival", "image": "assets/images/valheim.jpg", "description": "Viking kültüründen ilham alan, yöntemsel olarak oluşturulmuş bir arafta geçen, 1-10 oyunculu acımasız bir keşif ve hayatta kalma oyunu. Odin'in himayesine layık bir destana giden yolda savaşın, inşa edin ve fethedin!"},                                         
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                  {"name": "Sekiro™: Shadows Die Twice", "type": "Souls-like", "image": "assets/images/sek.jpg", "description": "IGN Bloodborne ve Dark Souls serisinin yaratıcısı FromSoftware tarafından geliştirilen ödüllü macera oyununda intikama giden yolda emin adımlarla ilerle. İntikamını al. Onurunu geri kazan. Ustalıkla öldür."},                               
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                   {"name": "Resident Evil Village", "type": "Survival-Fear", "image": "assets/images/re8.jpg", "description": "Resident Evil serisinin sekizinci devam oyunu olan Resident Evil Village'da eşsiz bir korku deneyimi yaşa. Detaylı grafikler, heyecan verici birinci şahıs aksiyonu ve ustaca bir hikaye anlatımıyla korkmak hiç bu kadar gerçekçi ve kaçınılmaz olmadı."},                              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                  {"name": "The Last of Us™ Part I", "type": "Zombie-RPG", "image": "assets/images/tlou.jpg", "description": "Büyük beğeni toplayan televizyon dizisinin ilham kaynağı olan ödüllü oyunu keşfedin. The Last of Us™'ta kıyamet sonrası Amerika'daki Joel ve Ellie'ye eşlik ederek unutulmaz müttefik ve düşmanlar edinin."},                             
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [   
                  {"name": "PUBG: BATTLEGROUNDS", "type": "Battle Royale", "image": "assets/images/pubg.jpg", "description": "PUBG: BATTLEGROUNDS'da. Stratejik konumlara iniş yapın, silahları ve malzemeleri yağmalayın, çeşitli ve geniş Savaş Alanlarında hayatta kalan son takım olmak için mücadele edin."},                               
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [     
                  {"name": "Hogwarts Legacy", "type": "RPG", "image": "assets/images/hl.jpg", "description": "Hogwarts Legacy, insanı içine çeken, açık dünyaya sahip bir RPG oyunudur. Şimdi ipleri elinize alarak büyücülük dünyasında kendi maceranızın tam ortasındaki yerinizi alabilirsiniz."},             
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                   {"name": "God of War Ragnarök", "type": "Action-RPG", "image": "assets/images/gowr.jpg", "description": "Ragnarök kapıda, Kratos ve Atreus ise cevap arayışında destansı bir yolculuğa çıkıyor."},              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [ 
                  {"name": "Forza Horizon 5", "type": "Racing", "image": "assets/images/fh5.jpg", "description": "Dünyanın en harika araçlarında sınırsız ve eğlenceli sürüş aksiyonuyla Meksika'nın canlı açık dünya manzaralarını keşfedin."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [ 
                  {"name": "Elden  Ring", "type": "Souls-like", "image": "assets/images/eldenring.jpg", "description": "Tarnished, yüksel ve zarafetin seni yönlendirmesine izin ver. Elden Ring'in gücünü kullan ve Lands Between'de bir Elden Lord ol."},                 
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [  
                  {"name": "7 Days to Die", "type": "Survival", "image": "assets/images/daystodie.jpg", "description": "7 Days to Die; birinci şahıs nişancı, hayatta kalma-korku, kule savunma ve rol yapma oyunlarının benzersiz bir kombinasyonu olan bir açık dünya oyunudur. Türünün ilk örneği olan nihai zombi hayatta kalma sandbox RPG'sini oyna. Navezgane bekliyor!"},                
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [    
                  {"name": "Batman: Arkham City", "type": "Action", "image": "assets/images/batman.jpg", "description": "Arkham City, Gotham'ın kuzey bölgesine duvarlar örülerek kurulmuş korkunç, dev, güçlünün zayıfı ezdiği bir hapishanedir. Bütün dünyadan izole, yiyecek ve içecek kıtlığının olduğu bu şehir, tamamen insanlık dışı ve etik olmayan dev bir ölüm çukurudur."},              
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [   
                  {"name": "Days Gone", "type": "RPG", "image": "assets/images/daysgone.jpg", "description": "Salgın sonrası ölümün kol gezdiği Amerika'da motosiklet sür ve savaş. Bu açık dünya aksiyon-macera oyununda, yaşamak için bir neden arayan ve hayatta kalmak için savaşarak Bozuk Yol'da motosiklet süren bir başıboş ve ganimet avcısı Deacon St. John olarak oyna."},                                
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [      
                  {"name": "Red Dead Redemption 2", "type": "Action-Adventure", "image": "assets/images/rdr2.jpg", "description": "175 kez Yılın Oyunu ödülü ve 250 kez tam puan değerlendirme alan Red Dead Redemption 2 yeni çağın şafağında Vahşi Batıda Artur Morgan ve Van der Linde çetesinin hikayesini anlatan görkemli bir onur ve sadakat destanı. Ayrıca, paylaşımlı ve canlı Red Dead Online dünyasına da erişim sağlıyor."},            
                ]),
                 const SizedBox(height: 30),
                 buildGameRow(context, [  
                  {"name": "Resident Evil 7 Biohazard", "type": "Survival-Fear", "image": "assets/images/re7.jpg", "description": "Güney Amerika'da terk edilmiş bir çiftlik evinin çürüyen duvarlarından tehlike ve tecrit akıyor. 7, hayatta kalma ve korku türüne yeni bir soluk getiriyor ve İzole Görünümle oyuncu perspektifinden görüntü sunuyor. Teknoloji harikası RE Motoruyla korku, yeni bir gerçekçilik boyutunu taşınıyor."},                                    
                  
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
        return buildGameItem(context, game['image']!, game['name']!, game['type']!, game['description']!);
      }).toList(),
    );
  }

  Widget buildGameItem(
      BuildContext context, String fotograf, String isim, String tur, String description) {
    return Container(
      width: 350,
      height: 425,
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
              fit: BoxFit.cover,
              height: 180,
              width: 180,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            isim,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            tur,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
