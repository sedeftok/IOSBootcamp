import UIKit

// if - guard
func kisiTanima1(ad:String) {
    if ad == "Ahmet" { // true çalışır
        print("merhaba Ahmet")
    }else{
        print("tanınmayan kişi")
    }
}

kisiTanima1(ad: "ahmetx")

func kisiTanima2(ad:String){
    guard ad == "Ahmet" else{ // false çalışır
        print("tanınmayan kisi")
        return }
    print("merhaba Ahmet")
}

kisiTanima2(ad: "Ahmet")

// Hata Ayıklama
// 1.Compile Error: Editör hataları

//Ornek - Hemen hata olduğuna dair bildirim alırız
//let x = 10
// x = 40

//2.Runtime Error: Exception - Çalışma sırasında oluşan hatalardır. Kodu yazdıktan sonra hata yok gibi görünür ama run ettikten sonra hata çıkar.

enum Hatalar: Error {
    case sifiraBolunmeHatasi
}

func bolme(say1:Int, say2:Int) throws -> Int { // throws, hata oluşma ihtimali olan bir fonk olduğunu belirtiyor
    if say2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return say1 / say2
}

// let sonuc = bolme(say1: 12, say2: 2) // böyle yazdığımızda hata verecek 2 şekilde çözebiliriz

do {
    let sonuc = try bolme(say1: 12, say2: 2)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("sayı sıfıra bölünemez")
}


let sonuc1 = try? bolme(say1: 12, say2: 2) // try?, Eğer hata olursa sonuc nil olur anlamına gelir.

if let temp = sonuc1 {
    print(temp)
}else{
print("sayı sıfıra bölünemez")
}
