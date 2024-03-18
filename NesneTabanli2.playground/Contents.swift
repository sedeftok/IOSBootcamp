import UIKit

//Kullanmak istediğimiz kütüphaneleri import etmeliyiz. Çoğu zaten otomatik import ediliyor yukarıdaki gibi





class Fonksiyonlar {
    // geri dönüş değeri olmayan (void)
    func selamla1(){
        let sonuc = "merhaba Ahmet"
        print(sonuc) // çıktı
    }
    
    // geri dönüş değeri olan  ( -> ve return eklenir)
    func selamla2() -> String {
        let sonuc = "merhaba Ahmet"
        return sonuc // veri transferi sağlıyor
    }
    
    //parametre
    func selamla3(isim:String) {
        let sonuc = "merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(say1:Int, say2:Int) -> Int {
        let toplam = say1 + say2
        return toplam
    }
    
    // Overloading - metotların class içerisinde tekrar tekrar kullanımı
    
    func carpma(say1:Double, say2:Double)  {
      print("çarpma: \(say1 * say2)")
    }
    
    func carpma(say1:Int, say2:Int, isim:String)  {
      print("çarpma: \(say1 * say2) - işlemi yapan: \(isim)")
    }
    
}
let f = Fonksiyonlar()

f.selamla1()

let gelenSonuc = f.selamla2()
print("gelen Sonuc: \(gelenSonuc)")


f.selamla3(isim: "Sedef")

let gelenToplam = f.toplama(say1: 234, say2: 534)
print("Gelen toplam: \(gelenToplam)")


f.carpma(say1: 3, say2: 43)

f.carpma(say1: 21, say2: 43, isim: "a")

// Static değişkenler ve methodlar

class ASinifi {
    
    var x = 10
    
    static func metod(){
        print("metod çalıştı")
    }
   
}

let a = ASinifi()
//print(a.x)
//a.metod()                                      ( metod fonksiyonunun başında static yazmadan önce çalıştırdık bunları)

//print(ASinifi().x) // sanal nesne - isimsiz nesne
//ASinifi().metod()


ASinifi.metod() //sadece sınıf ismiyle () olmadan eriştik  (static varken)

// Enumeration

enum KonserveBoyut { // enum sayesinde kendimiz secenekler ekledik
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut, adet:Int) {
    switch boyut {
        case .kucuk: print("Fiyat \(adet * 13)₺")
        case .orta: print("Fiyat \(adet * 24)₺")
        case .buyuk: print("Fiyat \(adet * 45)₺")
        }
}
ucretHesapla(boyut: .kucuk, adet: 100)

// Composition

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String){
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_yil:Int,film_ad:String,kategori:Kategoriler,yonetmen:Yonetmenler) {
        self.film_ad = film_ad
        self.film_id = film_id
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Korku")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
let y3  = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")

let f1 = Filmler(film_id: 1, film_yil: 2013, film_ad: "Django", kategori: k1, yonetmen: y1)

print("film id: \(f1.film_id!)")
print("film ad: \(f1.film_ad!)")
print("film yıl: \(f1.film_yil!)")
print("film kategori ad: \(f1.kategori!.kategori_ad!)")
print("film yönetmen ad: \(f1.yonetmen!.yonetmen_ad!)")


