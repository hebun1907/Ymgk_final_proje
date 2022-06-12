import 'package:flutter/cupertino.dart';
import 'package:yemektarifi/helpers/appcolors.dart';
import 'package:yemektarifi/helpers/iconhelper.dart';
import 'package:yemektarifi/models/category.dart';
import 'package:yemektarifi/models/categorypart.dart';
import 'package:yemektarifi/models/subcategory.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: AppColors.MEATS,
          name: "Çorbalar",
          imgName: "soup",
          icon: IconFontHelper.LOGO,
          subCategories: [
            SubCategory(
                color: AppColors.MEATS,
                name: "Kremalı Mantarlı Çorba",
                imgName: "cat1_1",
                icon: IconFontHelper.LOGO,
                parts: [
                  ///////////////Malzeme fotoları
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Sıvıyağ ve tereyağını bir tencereye koyup soğanı kavurun. Daha sonra mantarları ilave edip suyunu çekene kadar kavurun. Daha sonra unu ekleyin ve birkaç dakika kavurun. Ardından kremayı ekleyin ve orta ateşte kaynamaya başlayana kadar karıştırarak pişirin."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Mercimek Çorbası",
                imgName: "cat1_2",
                icon: IconFontHelper.LOGO,
                parts: [
                  ///////////////Malzeme fotoları
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Soğan ve sarımsak hafif kavrulunca unu ilave edin ve 2-3 dakika unu kavurun. Çırpma teliyle unu çırpıyorken tavuk suyunu ilave edin. Mercimekleri de ilave edin ve kalan sıcak suyu da ilave edip kaynamaya bırakın. Su kaynayınca tuzu ilave edin ve mercimekler iyice yumuşayıncaya kadar pişirin."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Domates Çorbası",
                imgName: "cat1_3",
                icon: IconFontHelper.LOGO,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "1 yemek kaşığı tereyağını bir tavada eritin.2 yemek kaşığı unu ekleyip kokusu çıkana kadar kısık ateşte, tereyağında kavurun.5 adet rendelenmiş domatesi kavrulmuş un karışımına ekledikten sonra 5 dakika kadar pişirin.Üzerine 4 su bardağı sıcak et suyunu ilave edin"),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Aş Çorbası",
                imgName: "cat1_4",
                icon: IconFontHelper.MEATS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Et suyu tabletini ve dört su bardağı suyu katıp kaynatalım. Çorba kaynayınca içerisine mercimek ve nohudu, en son olarak da erişteyi ilave edelim. 10 dakika daha pişirdikten sonra üzerine kırmızı pul biber ve nane serpelim. Aş Çorbası servise hazır."),
                ]),
          ]),
      Category(
          color: AppColors.MEATS,
          name: "Ana Yemekler",
          imgName: "cat1",
          icon: IconFontHelper.MEATS,
          subCategories: [
            SubCategory(
                color: AppColors.MEATS,
                name: "Kremalı Mantarlı Makarna",
                imgName: "cat6_4",
                icon: IconFontHelper.MEATS,
                parts: [
                  CategoryPart(
                      name: " ",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Kremayı pişen mantarların üzerine ekleyip tuz, karabiber ayarını yaptığınız sosu tereyağı ilave ederek bağlayın. Haşlanan makarnayı hazırladığınız mantarlı sosa süzerek ekleyin ve karıştırarak beraber 2-3 dakika pişirin. Tabağa aldığınız enfes soslu makarnayı doğranmış maydanoz ile birlikte servis edin."),
                  CategoryPart(
                      name: "Resim", imgName: "cat1_1_p2", isSelected: false),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Patlıcan Kebabı",
                imgName: "cat6_2",
                icon: IconFontHelper.MEATS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Patlıcanları iki parmak kalınlığında halka halka kesiyoruz ve biraz tuzlu suda bekletiyoruz bizde bu arada kıymanın avcarını yapıyoruz 3-4 diş sarımsağı eziyoruz.Tuz ,karabiber ve pul biberi ilave edip iyice yoğuruyoruz. Patlıcanlarla birlikte fıtrına atıp 45 dakika sonra servis ediyoruz"),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Mantı",
                imgName: "cat5_1",
                icon: IconFontHelper.MEATS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Un, su yumurta ve tuz karıştırılır. Ele yapışmayan ve sert bir hamur elde edilir hamur sert olmalı yoksa mantılar kapanmaz. Hamurumuz dinlenirken içi için bir soğan kıymanın üzerine küçük küçük doğranır karabiber ve tuz eklenir. Hamurumuzu ince açmayalım yoksa suda erir yufkadan biraz kalın olmalı"),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Karnıyarık",
                imgName: "cat5_2",
                icon: IconFontHelper.MEATS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "(Yağını çekmesi için) patlıcanları pişireceğimiz tavaya alıp daha sonra bıçak yada maşa yardımı ile arasını açıp içini koyuyoruz. Üzerini domates, biber ile süsleyebilirsiniz. 1 su bardağına yakın sıcak suyu tavaya koyup 15-20 dk çok kısık ateşte pişiriyoruz. Afiyet olsun."),
                ]),
          ]),
      Category(
          color: AppColors.PASTRIES,
          name: "Tatlılar",
          imgName: "cat3",
          icon: IconFontHelper.SEEDS,
          subCategories: [
            SubCategory(
                color: AppColors.MEATS,
                name: "Sütlaç",
                imgName: "cat5_3",
                icon: IconFontHelper.VEGS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "1 su bardağı pirinci 2 su bardağı su ilave ederek tencerede suyunu çektirerek pişirin.Suyunu iyice çeken pirinçlere 2 litre süt ilave edin. ...Süt ile pirinç iyice kaynadıktan sonra 2 su bardağı şekeri tencereye ilave edin.Şekeri de ekledikten sonra kısık ateşte bir saat pişmeyebırakın."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Limonlu Cheescake",
                imgName: "cat4_1",
                icon: IconFontHelper.SEEDS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Limon sosu için; Nişasta, limon suyu, toz şeker ve limon kabuğu rendesini sos tenceresine alın ve koyulaşana kadar karıştırın. Koyulaşan tatlıyı ocaktan alın ve içine tereyağı ekleyin. Tereyağını karıştırarak sosa yedirin. Hazırladığınız sosu soğutun."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Trileçe",
                imgName: "cat4_2",
                icon: IconFontHelper.SEEDS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Kremşantili trileçe yapmak için öncelikle karıştırma kabımıza yumurta ve toz şekeri alıp boza kıvamına gelene kadar çırpalım. Un, kabartma tozu ve vanilyayı ekleyip spatulayla alttan üste doğru karıştırıp yağlı kağıt serili fırın kabına dökelim. 170°lik fırında 10 dk, sonra ısıyı 150° düşürüp yaklaşık 30 dk pişirelim."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Sufle",
                imgName: "cat4_4",
                icon: IconFontHelper.SEEDS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Yumurta ve toz şekeri köpürene kadar çırpın. Ardından yağ, süt, un, kakao, vanilya ve kabartma tozunu da ekleyip tekrar karıştırın. Hazırladığınız kek harcını fincanlara paylaştırın, fincanların yarısından biraz daha fazla dolmasına özen gösterin, ağzına kadar doldurmayın. Çikolatayı kırıp fincanlara paylaştırın."),
                ]),
          ]),
      Category(
          color: AppColors.VEGS,
          name: "Vegan Yemekler",
          imgName: "cat6",
          icon: IconFontHelper.VEGS,
          subCategories: [
            SubCategory(
                color: AppColors.MEATS,
                name: "Patlıcan Pizzası",
                imgName: "cat6_1",
                icon: IconFontHelper.VEGS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Pizzayı hem vegan hem de oldukça düşük kalorili bir şekilde yemek isterseniz kabak pizzası tarifi tam da size göre. Kabak, en düşük kalorili sebzelerden biridir. Sağlıklı beslenmek isterseniz kabağı mutlaka beslenme programınıza ekleyin. Sağlıklı ve vegan beslenirken lezzetten de şaşmamak istiyorsanız kabak pizzası gibi tarifleri takip edebilirsiniz. O halde hazırsanız sizin için derlediğimiz bu leziz tarifin detaylarını birlikte keşfedelim."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Falafel",
                imgName: "cat1_1_p1",
                icon: IconFontHelper.VEGS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Öncelikle haşlanmış nohutları robotta çekelim. Ardından kuru soğanı, maydanozu ve dereotunu da robotta çekelim ve yoğurma kabımızın içerisine alalım. Baharatları, unu, yumurta, kabartma tozunu da ekleyip yoğuralım. Köftelerimizi kızgın yağda iki taraflı pembeleşinceye kadar kızartalım."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Nohut Köftesi",
                imgName: "cat1_1_p3",
                icon: IconFontHelper.VEGS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Nohutları fazladan haşlayıp dondurucuda saklayabilir ve köfteyi yapacağınız zaman pratik bir şekilde hazırlayabilirsiniz. Nohut köftesinin yanına sarımsaklı yoğurt, mayonez, ketçap gibi soslar alabilirsiniz."),
                ]),
            SubCategory(
                color: AppColors.MEATS,
                name: "Kapya Biberli Mantarlı Yemek",
                imgName: "cat1_1_p4",
                icon: IconFontHelper.VEGS,
                parts: [
                  CategoryPart(
                      name: "",
                      imgName: "cat1_1_p5",
                      isSelected: false,
                      konu:
                          "Mantarları temiz bir bezle sildikten sonra saplarını kesin. Mantarların boyutu çok büyükse ortadan ikiye bölebilirsiniz.Soğanın kabuklarını soyun ve yemeklik olacak şekilde doğrayın.Yıkadığınız kapya biberleri iri iri olacak şekilde dilimleyin.Yağlı kağıt serili fırın tepsisine doğradığınız tüm malzemeleri dizin.Üzerinde zeytinyağı gezdirdikten sonra baharatlarını da ekleyin.Önceden 160 derecede ısıttığınız fırında 30-40 dakika kadar pişirin.Piştikten sonra servis tabağına alabilirsiniz."),
                ]),
          ]),
    ];
  }
}
