import UIKit

//SET
var meyveler = Set<String>()

meyveler.insert("kiraz")
meyveler.insert("muz")
meyveler.insert("çilek")
print(meyveler) // Set, karışık şekilde sıralar

meyveler.insert("kiraz")
print(meyveler) // set, olan ürünü tekrar eklemez

for meyve in meyveler {
    print("sonuç: \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks) -> \(meyve)")
}

print("boyut: \(meyveler.count)")
print("boş mu: \(meyveler.isEmpty)")

meyveler.remove("kiraz")
print(meyveler)

meyveler.removeAll()
print(meyveler)

// Dictionary - HashMap - Map
var iller = [Int:String]() // [anahtar:değer] key:value

//veri ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

// veri okuma
print(iller[16]!)

// veri güncelleme
iller[16] = "Yeni Bursa"
print(iller)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller) 
