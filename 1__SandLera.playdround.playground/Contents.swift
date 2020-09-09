import UIKit

// 1 задание

// Equation = a(x^2) + bx + c
let a = 34
let b = 23
let c = 19

let discriminant = sqrt Double(b*b)+ Double(4*a*c)
    if discriminant == 0 {
        let radical = Double(b)Double(-1)/Double(2)Double(a)    
            print("У уравнения Equation один корень и он равен Radical")
} else
    if discriminant < 0 {
        print("нет корней")
} else {
        let radicalOne = Double(b)Double(-1) - discriminant/Double(2)Double(a)
        let radicalTwo = Double(b)Double(-1) + discriminant/Double(2)Double(a)
            print("У уравнения Equation два корня radicalOne и radicalTwo")
}



// 2 задание
let cathetA = 6
let cathetB = 9
let area = Double(cathetA * cathetB) / 2.0
let hypotenuseC = sqrt(Double(cathetA * cathetA) + Double(cathetB * cathetB))
let perimeter = Double(cathetB + cathetA) + hypotenuseC

print("Площадь треугольника = area, периметр треугольника = perimeter, длина гипотенузы треугольника = hypotenuseC")

//3 задание
typealias ruble = Double
typealias percent = Double
var amountOfDeposit : Ruble = 2100.0
var meterYears = 1
let annualPercentage : Percent = 5.0
while meterYears <= 5 {
let onePercent = amountOfDeposit / 100.0
let annualIncome = onePercent * annualPercentage
amountOfDeposit = amountOfDeposit + annualIncome
meterYears += 1
}
print("Сумма вклада через 5 лет равна amountOfDeposit")


