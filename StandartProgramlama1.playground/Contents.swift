import UIKit
var isim = "Alp"
if isim == "Alp" {
    print("merhaba Alp")
}else {
    print("tanınmayan kişi")
}

var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 { // ve
    print("hoşgeldiniz")
}else{
    print("hatalı giriş")
}

var sonuc = 10

if sonuc == 9 || sonuc == 10 { // veya
    print(" sonuç 9 veya 10 dur")
}else{
    print("sonuc 9 veya 10 değil")
}

// switch , kotlin(when)

var gun = 3

switch gun {
case 1: print("Pazartesi")
case 2: print("Salı")
case 3: print("Çarşamba")
case 4: print("Perşembe")
case 5: print("Cuma")
case 6: print("Cumartesi")
case 7: print("Pazar")
default: print("Böyle bir gün yok")
}

//Donguler: belirli kodları tekrarlı çalıştırma amaçlı yapılardır.

for x in 1...3 {
    print("Döngü 1: \(x)")
}

//10 ile 20 , 5 er artış
for a in stride(from: 10, through: 20, by: 5) { // through yerine to kullanılırsa son değeri saymaz yani 20 yi
    print("Döngü 2: \(a)")
}
//20 ile 10 , 5 er azalma
for a in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3: \(a)")
}

// 1,2,3

var sayac = 1

while sayac <= 4 {
    print( "döngü 4: \(sayac)" )
    sayac += 1 //sayac = sayac + 1
}


for i in 1...5 {
    if i == 3 {
        break // değere geldiğinde durur o değeri de yazmaz
    }
    print("döngü 5: \(i)")
}

for i in 1...6 {
    if i == 3 {
        continue // değeri atlayıp devam eder
    }
    print("döngü 6: \(i)")
}
