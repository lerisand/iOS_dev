import Foundation

// 1. Написать функцию, которая определяет, четное число или нет.
func checkEven(_ num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

let numberArray = [9, 2, 5, 0, 1, 10, 7]

for i in 0...numberArray.count - 1 {
    if checkEven(numberArray[i]) { print ("Число \(numberArray[i]) - четное")}
    else { print ("Число \(numberArray[i]) - нечетное")}
}

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func isDividedByThree(_ num: Int) {
    if num % 3 == 0 {
        print("\(num) делится на 3 без остатка")
    } else {
        print("\(num) не делится на 3 без остатка")
    }
}

for i in 0...numberArray.count - 1 { isDividedByThree(numberArray[i]) }


// 3. Создать возрастающий массив из 100 чисел.
var newArray = [Int]()

for i in 0..<100 {
    newArray.append(i)
}
print("Элементы массива: \(newArray)")

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for value in newArray {
    if checkEven(value) {
        newArray.remove(at: newArray.firstIndex(of: value)!)
    } else {}
}
for value in newArray {
    if isDividedByThree value {
        newArray.remove(at: newArray.firstIndex(of: value)!)
    } else {}
}
newArray

// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibo(_ n: Int) -> [Decimal] {
    var fiboArray = [Decimal]()
    let a: Decimal = 0
    var b: Decimal = 1
    
    fiboArray.append(a)
        b = a - b
    
    }
print("Массив с числами Фибоначчи = \(fibo(100))")

/* 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.*/


func prime(num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }

    return true
}
func primeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if prime(num: i) {
            results.append(i)
        }
        i += 1
    }

    return results
}
print("Все целые числа = \(primeArray())")
