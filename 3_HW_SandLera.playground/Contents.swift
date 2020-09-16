import Foundation


enum EngineState: String {
    case start = "запущен", stop = "остановлен"
}

enum WindowState: String {
    case open = "открыто", close = "закрыто"
}

enum TrunkAction {
    case load, unload
}

// создалa только одну структуру для легкового автомобиля. Для грузовика, то же самое.
struct Car {
    var brand: String
    var dateIssue: String
    var capacityTrunk: Int
    var capacityTrunkFilled: Int = 0 {
         didSet {
            if (capacityTrunkFilled > capacityTrunk) {
                print("Объем превышает ёмкость багажника.")
                capacityTrunkFilled = oldValue
            } else if (capacityTrunkFilled < 0) {
                print("Ошибка! Отрицательное значение.")
            }
        }
    }
    
    var engineState: EngineState
    var windowState: WindowState

    mutating func engineAction(state: EngineState) -> Void {
        switch state {
        case .start:
            self.engineState = .start
            print("Включен двигатель")
        case .stop:
            self.engineState = .stop
            print("Двигатель выключен")
        }
    }

    mutating func windowAction(state: WindowState) -> Void {
        switch state {
        case .open:
            self.windowState = .open
            print("Окно открыто")
        case .close:
            self.windowState = .close
            print("Окно закрыто")
        }
    }
    
    mutating func loadAction(action state: TrunkAction, weight: Int) {
        switch state {
        case .load:
            self.capacityTrunkFilled += weight
        case .unload:
            self.capacityTrunkFilled -= weight
        }
    }
    
    func getInfoAboutVehicle() {
        print("\n====Информация об автомобиле====")
        print("Автомобиль \(self.brand) выпуска \(dateIssue) загружен на \(self.capacityTrunkFilled) из \(self.capacityTrunk) возможных.\nДвигатель в состоянии \"\(self.engineState.rawValue)\".\nОкно \(self.windowState.rawValue)")
        print("====\n")
    }
}

// Создаем экземпляры структруы
var car01 = Car(
    brand: "Honda",
    dateIssue: "01/02/2012",
    capacityTrunk: 110,
    capacityTrunkFilled: 0,
    engineState: .stop,
    windowState: .close)

var car02 = Car(
    brand: "BMW",
    dateIssue: "01/01/2010",
    capacityTrunk: 140,
    capacityTrunkFilled: 100,
    engineState: .stop,
    windowState: .open)

car01.getInfoAboutVehicle()
print("Автомобиль перегружен")
car01.capacityTrunkFilled = 150
car01.loadAction(action: .load, weight: 40)
car01.engineAction(state: .start)
car01.getInfoAboutVehicle()

car02.getInfoAboutVehicle()
print("Попытка присвоить отрицательное значение объема загруженности")
car02.loadAction(action: .unload, weight: 160)
car02.loadAction(action: .load, weight: 90)
car02.windowAction(state: .close)
car02.getInfoAboutVehicle()
