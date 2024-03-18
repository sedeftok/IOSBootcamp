import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){// classta nesne oluşturduğumda burası çalışır
        print("boş init metodu çalıştı")
    }
    
    init(renk:String,hiz:Int, calisiyorMu:Bool){
        self.renk = renk // self bulunduğu sınıfı temsil eder. kotlin veya javada this olarak kullanılır
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // shadowing: gölgeleme
        print("dolu init metodu çalıştı")
    }
    
    
    
    func calistir() { // side effect - ana özellikleri değiştirebilmek, bi alt satır gibi
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm // hız optional bir değerdi unwrap yaparak normal değere dönüştürüyoruz
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
        
    func bilgiAl(){
        print("--------------------------")
        print("renk        : \(renk!)")
        print("hız         : \(hiz!)")
        print("çalışıyor mu: \(calisiyorMu!)")
    }
}

// nesne oluşturma
var bmw = Araba(renk: "Mor", hiz: 100, calisiyorMu: true)
// değer atamanın daha kolay yolu

// değer atama
//bmw.calisiyorMu = true
//bmw.hiz = 100
//bmw.renk = "Mor"




bmw.hizlan(kacKm: 50)
bmw.bilgiAl()

// değer okuma

bmw.bilgiAl()

var sahin = Araba()

sahin.calisiyorMu = false // bu şekilde yazmak yerine init ile daha pratik şekilde yazabiliriz ( bmw örneğindeki gibi)
sahin.renk = "Siyah"
sahin.hiz = 0

sahin.bilgiAl()
sahin.calistir() // calıştır fonksiyonuyla bilgileri değiştirdik, tekrar bilgiAl ile bunu görebiliriz
sahin.bilgiAl()
sahin.durdur()




/* class ve structure farkı
 class yapısında miras özelliği vardır, structure da yok
 class referans tipidir, structure değer tipidir.
 Referans: ali ve mehmet ortak bir dosya kullanıyor. Ali dosya içindeki veriyi değiştirirse bu mehmet için de değişir yani etkilenir. ( hafızada aynı yerdeler)
 Değer: ama değer tipinde bilgiyi değiştirseler bile birbirlerinden etkilenmezler, herkesin dosyası kendisine aittir. ( hafızada farklı bölümleri vardır.)
*/

