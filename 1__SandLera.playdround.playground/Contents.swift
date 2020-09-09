import UIKit

// 1 задание

// Equation = a(x^2) + bx + c
let a = 34
let b = 23
let c = 19

let Discriminant = sqrt((Double)(b*b)+(Double)(4*a*c))
    if Discriminant == 0 {let Radical = ((Double)(b)(Double)(-1))/((Double)(2)(Double)(a))
//    не пойму в чем дело / пишет cannot call value of non-function type Double. буду искать решение после сдачи ДЗ
        
print("У уравнения (Equation) один корень и он равен (Radical)")
} else
    if Discriminant < 0 {
print("нет корней")
} else {
        let RadicalOne = ((Double)(b)(Double)(-1) - Discriminant)/((Double)(2)(Double)(a))
        let RadicalTwo = ((Double)(b)(Double)(-1) + Discriminant)/((Double)(2)(Double)(a))
print("У уравнения (Equation) два корня (RadicalOne) и (RadicalTwo)")
}



// 2 задание
let СathetA = 6
let СathetB = 9
let Area = (Double)(СathetA * СathetB) / 2.0
let HypotenuseC = sqrt((Double)(СathetA * СathetA) + (Double)(СathetB * СathetB))
let Perimeter = (Double)(СathetB + СathetA) + HypotenuseC

print("Площадь треугольника = (Area), периметр треугольника = (Perimeter), длина гипотенузы треугольника = (HypotenuseC)")

//3 задание
typealias Ruble = Double
typealias Percent = Double
var AmountOfDeposit : Ruble = 2100.0
var MeterYears = 1
let AnnualPercentage : Percent = 5.0
while MeterYears <= 5 {
let OnePercent = AmountOfDeposit / 100.0
let AnnualIncome = OnePercent * AnnualPercentage
AmountOfDeposit = AmountOfDeposit + AnnualIncome
MeterYears += 1
}
print("Сумма вклада через 5 лет равна (AmountOfDeposit)")


