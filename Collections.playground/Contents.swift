import UIKit

// Array Kullanımı

var numaralar = [10,20,30]
var meyveler = [String]()

//Veri Ekleme
meyveler.append("Elma") // 0
meyveler.append("Muz") // 1
meyveler.append("Kiraz") // 2
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma" // 0 dakinin ismini değiştirir
print(meyveler)

// Insert
meyveler.insert("Portakal", at:1) // 1 dekini sağa kaydırıp 1 e istenileni ekler
print(meyveler)

//Veri Okuma
print(meyveler[2])
let m = meyveler[0]
print(m)

print("Boyut : \(meyveler.count)")
print("Boş kontrol: \(meyveler.isEmpty)")

for meyve in meyveler {
    print("Sonuç: \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks) -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)


meyveler.removeAll()
print(meyveler)


//Nesne Tabanlı
class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 808, ad: "Çağlanur", sinif: "9D")
var o2 = Ogrenciler(no: 391, ad: "Sedef", sinif: "11B")
var o3 = Ogrenciler(no: 619, ad: "Asya", sinif: "11C")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o3)
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)

for o in ogrencilerListesi {
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıf: \(o.sinif!)")
}

// Filtreleme
var f1 = ogrencilerListesi.filter({ $0.no! > 100 }) // $0 öğrencileri temsil ediyor
print("filtreleme 1")
for o in f1 {
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıf: \(o.sinif!)")
}

var f2 = ogrencilerListesi.filter({ $0.ad!.contains("y")  })
print("filtreleme 2")
for o in f2 {
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıf: \(o.sinif!)")
}

// Sıralama - Sorting
var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print(" büyükten küçüğe sıralama")
for o in s1 {
    print("No: \(o.no!) - Ad: \(o.ad!) - Sınıf: \(o.sinif!)")
}
