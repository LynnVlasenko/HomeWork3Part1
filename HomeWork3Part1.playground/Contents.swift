import Foundation

/*
 
 Домашнє завдання 3
 
 Частина 1
 
 */

print("_________ Home Task 3 _ Part 1: Потік керування - Цикли ________\n\n")

/*
 
 Розділ 1 - Потік керування
 
 - Цикли
 
 */

// Псевдонім для зберігання деталей товару
typealias ProductInfo = (String, Double, String, String, String)

// Користувач в інтернет-магазині додав наступні товари у кошик,
// але ще не визначився, яку саме відеократу придбати:
let cart: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

/*
 
 Пункт 1.1
 
 Викороистовуючи цикил For виведіть у консоль усю інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 Сокет: значення, Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
     Сокет: s1151, Процессор: Intel
    ------------------------------------------------------
 */

// Цикл For
print("\nTask 1.1 - Цикл For:\n")

for productIndex in 0 ..< cart.count {
    print("---------------------------\(productIndex + 1)---------------------------")
    print("Назва товару: \(cart[productIndex].0), Ціна: \(String(format: "%.2f", cart[productIndex].1)) \(cart[productIndex].2)")
    print("Сокет: \(cart[productIndex].3), Процесор: \(cart[productIndex].4)")
    print("--------------------------------------------------------")
}

// Цикл For in (additional solution)
print("\n\nTask 1.1 - Цикл For in (additional solution):\n")

for (index, item) in cart.enumerated() {
    print("---------------------------\(index + 1)---------------------------")
    print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
    print("Сокет: \(item.3), Процесор: \(item.4)")
    print("--------------------------------------------------------")
}

// Func Map (additional solution)
print("\n\nTask 1.1 - Func Map (additional solution):\n")

cart.enumerated().map {
    print("--------------------------\($0 + 1)---------------------------")
    print("Назва товару: \($1.0), Ціна: \(String(format: "%.2f", $1.1)) \($1.2)")
    print("Сокет: \($1.3), Процесор: \($1.4)")
    print("--------------------------------------------------------")
}


/*
 
 Пункт 1.2
 
 Викороистовуючи цикил For in виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD
     Процессор: Intel
    ------------------------------------------------------
 */


// Цикл For in
print("\n\n\nTask 1.2 - Цикл For in:\n")

for (index, item) in cart.enumerated() {
    print("---------------------------\(index + 1)---------------------------")
    print("Назва товару: \(item.0)")
    print("Процесор: \(item.4)")
    print("--------------------------------------------------------")
}


/*
 
 Пункт 1.3
 
 Викороистовуючи цикил While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Ціна: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Ціна: 1717.00 ₴
    ------------------------------------------------------
 */

// While
print("\n\n\nTask 1.3 - While:\n")

var whileCounter = 0

while whileCounter < cart.count {
    print("------------------------\(whileCounter + 1)------------------------")
    print("Назва товару: \(cart[whileCounter].0)")
    print("Ціна: \(String(format: "%.2f", cart[whileCounter].1)) \(cart[whileCounter].2)")
    print("--------------------------------------------------")
    whileCounter += 1
}



/*
 
 Пункт 1.4
 
 Викороистовуючи цикил Repeate While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Сокет: s1151
    ------------------------------------------------------
 */

// Repeat While
print("\n\nTask 1.4 - Repeat While:\n")

var repeatWhileCounter = 0

repeat {
    print("------------------------\(repeatWhileCounter + 1)------------------------")
    print("Назва товару: \(cart[repeatWhileCounter].0)")
    print("Сокет: \(cart[repeatWhileCounter].3)")
    print("--------------------------------------------------")
    repeatWhileCounter += 1
} while repeatWhileCounter < cart.count



/*
 
 Розділ 1 - Потік керування
 
 - If / if else
 
 */

print("\n\n\n\n_________ Home Task 3 _ Part 1: Потік керування - If / if else ________\n\n")

/*
 
 Пункт 1.5
 
 Викороистовуючи будь-який з циклів та умовні оператори if else
 виведіть у консоль тільки ті товари
 - ціна яких менша 5000.00 грн.
 - значення socket є s1151
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    Сокет: s1151
    ------------------------------------------------------
 */

// If / if else
print("\n\nTask 1.5 - If / if else:\n")

for (index, item) in cart.enumerated() {
    if item.1 < 5000.0 && item.3 == "s1151" {
        print("---------------------------\(index + 1)---------------------------")
        print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
        print("Сокет: \(item.3)")
        print("--------------------------------------------------------")
    }
}



/*
 
 Розділ 1 - Потік керування
 
 - Switch
 
 */

print("\n\n\n\n_________ Home Task 3 _ Part 1: Потік керування - Switch ________\n\n")

/*
 
 Пункт 1.6
 
 Викороистовуючи будь-який з циклів та умовні оператор switch
 додати перевірку через case на відповідність процесору товару AMD чи Intel,
 значення процесору брати з опису товару
 (дивись Примітка після прикладу приклад switch) і
 вивести у консоль наступну інформацію про всі товари
 - назва товару
 - ціна товару
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ------------------------------------------------------

 * Примітка
    
     let processorStringValue = "Значення процесору з продукту"
 
     switch processorStringValue {
     case "Intel":
         // друк інформації для товару з процесором Intel
     case "AMD":
         // друк інформації для товару з процесором AMD
     default:
         // друк пустої строки
     }
    
 */

print("\n\nTask 1.6 - Switch:")


// Мабуть я не так зрозуміла завдання і нам треба просто перевірити, що в кошику є товари з AMD чи Intel
for (index, item) in cart.enumerated() {

    let processorStringValue = item.4
    
    switch processorStringValue {
    case "Intel", "AMD":
        print("----------------------\(index + 1) - Процесор: \(item.4)----------------------")
            print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
            print("--------------------------------------------------------")
    default:
        break
    }
}

// Покращений варіант з пошуком по значеннню. Коли клієнт хоче знайти в кошику товар з процесором AMD чи Intel
//let processorStringValue = "Intel"
////
//for (index, item) in cart.enumerated() {
//
//    switch processorStringValue {
//    case "Intel":
//        if item.4 == "Intel" {
//            print("---------------------------\("Процесор Intel: \(index + 1)")---------------------------")
//            print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
//            print("--------------------------------------------------------")
//        }
//    case "AMD":
//        if item.4 == "AMD" {
//            print("---------------------------\("Процесор AMD: \(index + 1)")---------------------------")
//            print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
//            print("--------------------------------------------------------")
//        }
//    default:
//        break
//    }
//}

// Перший варіант з пошуком по значеннню. Коли клієнт хоче знайти в кошику товар з процесором AMD чи Intel
//switch processorStringValue {
//case "Intel":
//    // друк інформації для товару з процесором Intel
//    for (index, item) in cart.enumerated() {
//        if item.4 == "Intel" {
//            print("---------------------------\(index + 1)---------------------------")
//            print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
//            print("--------------------------------------------------------")
//        }
//    }
//case "AMD":
//    // друк інформації для товару з процесором AMD
//    for (index, item) in cart.enumerated() {
//        if item.4 == "AMD" {
//            print("---------------------------\(index + 1)---------------------------")
//            print("Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
//            print("--------------------------------------------------------")
//        }
//    }
//default:
//    // Така виникла ідея - додати тут перевірку на додані у корзину товари (з якими вони процесорами),
//    // щоб надрукувати повідомлення, якщо користувач буде шукати товар з процессором,
//    // якого немає у кошику на даний момент:
//    var processorsInCart: Set<String> = [] // створюемо сет, щоб зібрати усі не повторювані значення.
//
//    for item in cart {
//        processorsInCart.insert(item.4) // додаємо у сет назви процесорів з відеокарт,
//                                        // які присутні у кошику
//    }
//
//    var processorsString = "" // створюємо порожній рядок. щоб потім надрукувати у повідомленні
//
//    for item in processorsInCart {
//        processorsString += "\(item), " // додаємо у рядок значення з сету
//    }
//    // видаляємо зайві коми і пробіли у кінці сформованого рядка
//    processorsString.remove(at: processorsString.index(processorsString.endIndex, offsetBy: -2))
//
//    // друкуємо повідомлення, якщо користувач, шукатиме у кошику товар з процесором, який ще не додав
//    // або якого немає в магазині:
//    // інформуємо користувача - товари з якими процесорами присутні наразі у кошику.
//    print("---------------------------Значення не знайдено---------------------------")
//    print("Наразі у кошику лише товари з процесором \(processorsString)- оберіть одну з них для пошуку")
//    print("--------------------------------------------------------------------------")
//}

/*
 
 Розділ 2 - Функції
 
 */

print("\n\n\n\n_________ Home Task 3 _ Part 2: Functions ________\n\n")

/*
 
 Пункт 2.1
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію без параметрів,
 яка виведе інформацю про товари з кошика тільки з процесором Inetel
 у консоль у наступному форматі:
 
 ------------------- Inetel -------------------------------
 1 Назва товару: значення товару
 2 Назва товару: значення товару
 3 Назва товару: значення товару
 ...
 n Назва товару: значення товару // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Inetel -------------------------------
    1 Назва товару: ASRock H310CV-HD
    2 Назва товару: Asus Prime H310M-E R2.0
    ...
    n Назва товару: Asus WS C246 Pro // n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її
 
 */

print("\n\nTask 2.1 - Functions:\n")

func printVideocardsWithIntelProcessor() {
    print("---------------------Intel-----------------------")
    for (index, item) in cart.enumerated() {
        if item.4 == "Intel" {
            print("\(index + 1) Назва товару: \(item.0)")
        }
    }
    print("--------------------------------------------------")
}

printVideocardsWithIntelProcessor()


/*
 
 Пункт 2.2
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію з параметром максимальна ціна (maxPrice: Double),
 яка виведе інформацю про товари з кошика тільки з ціною, яка менше за значення maxPrice
 у консоль у наступному форматі:
 
 ------------------- Товари з ціною менше значення -------------------------------
 1 Назва товару: значення, Ціна: знак валюти і значення
 2 Назва товару: значення, Ціна: знак валюти і значення
 3 Назва товару: значення, Ціна: знак валюти і значення
 ...
 n Назва товару: значення, Ціна: знак валюти і значення // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Товари з ціною менше 4500.00 -------------------------------
    1 Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ...
    n Назва товару: Asus WS C246 Pro, Ціна: 2299.0// n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її з максимальним значенням на свій розсуд для перевірки
 
 */

print("\n\nTask 2.2 - Functions:\n")

func printProductInfoWith(maxPrice: Double) {
    print("---------------------Товари з ціною менше \(maxPrice)-----------------------")
    for (index, item) in cart.enumerated() {
        if item.1 <= maxPrice { // ставлю знак <=, щоб враховувати вказану максимальну ціну у пошуку
                                // зазвичай для користувача логічно, коли фільтри враховують вказану суму,
                                // тож вирішила зробити так.
            print("\(index + 1) Назва товару: \(item.0), Ціна: \(String(format: "%.2f", item.1)) \(item.2)")
        }
    }
    print("--------------------------------------------------------------------------")
}

printProductInfoWith(maxPrice: 4500)



/*
 
 Пункт 2.3
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію яка приймає параметром тип процесору (processor: String),
 та повертає найдорожчий товар (тобто поіністю елемент типу ProductInfo) з вказаним процесором processor
 
 результат записати у константу та вивести у консоль у форматі:
 ------------------- Найдорожчий товар за процесором значення -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
 
     ------------------- Найдорожчий товар за процесором Intel -------------------------------
     Назва товару: Asus WS C246 Pro, Ціна: 10979.00 ₴
     -----------------------------------------------------------------------------------------
 
 */

print("\n\nTask 2.3 - Functions:\n")
// Not sure that the solution for task 2.3 is the most optimal. Try to improve it or contact a mentor.

func printTheMostExpensiveProductWith(processor: String) {
    
    print("---------------------Найдорожчий товар за процесором \(processor)-----------------------")
    
    var newArray = [ProductInfo]()
    var maximum = 0.0
    
    cart.enumerated().map {
        if $1.4 == processor {
            newArray.append($1)
        }
    }
    
    newArray.enumerated().map {
        maximum = newArray.reduce(0.0) { max($0, $1.1) }
        
        if $1.1 == maximum {
            print("Назва товару: \($1.0), Ціна: \(String(format: "%.2f", $1.1)) \($1.2)")
        }
    }
    print("------------------------------------------------------------------------------------")
}

printTheMostExpensiveProductWith(processor: "AMD")

/*
 
 Розділ 3 - Перечислення / Enum
 
 */

print("\n\n\n\n_________ Home Task 3 _ Part 3: Enum ________\n\n")

/*
 
 Пункт 3.1
 
 Зарезервувати (описати) enum для типу процесора ProcessorType, який матиме 2 випадки (cases) з тестовим описом
 - intel = "Intel"
 - amd = "AMD"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

print("\n\nTask 3.1 - Enum:\n")

enum ProcessorType: String {
    case intel = "Intel"
    case amd = "AMD"
}

let processorType: ProcessorType = .intel
print(processorType.rawValue)

print("-----------------------------------------------------")


/*
 
 Пункт 3.2
 
 Зарезервувати (описати) enum для валюти (Currency), який матиме 3 випадки (cases) з тестовим описом
 - uah = "UAH"
 - usd = "USD"
 - eur = "EUR"
 
 створити змінну типу створенного enum з якимось із значень
 
 */
print("\n\nTask 3.2 - Enum:\n")

enum Currency: String {
    case uah = "UAH"
    case usd = "USD"
    case eur = "EUR"
}

let currency: Currency = .uah
print(currency.rawValue)

print("-----------------------------------------------------")

/*
 
 Розділ 4 - Структури і класи
 
 */

print("\n\n\n\n_________ Home Task 3 _ Part 4: Структури і класи ________\n\n")

/*
 
 Пункт 4.1

 Описати структуру MotherBoard (Материньска плата)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - socet типу String
 - processor типу ProcessorType (enum, оголошений у розділі Перечислення)
 
 створити змінну типу MotherBoard і спробувати поміняти їй інші значення
 
 */

print("\n\nTask 4.1 - Struct:\n")

struct MotherBoard {
    var socet: String = "sAM4"
    var processor: ProcessorType = .amd
}

var newMotherBoard = MotherBoard()
newMotherBoard.socet = "s1151"
newMotherBoard.processor = .intel

print("Сокет: \(newMotherBoard.socet), Процесор: \(newMotherBoard.processor.rawValue)")
print("-----------------------------------------------------")
/*
 
 Пункт 4.2

 Описати клас Product (опис продукту)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - name типу String
 - price типу Double
 - currency типу Currency (використати enum з розділу 3 пункт 3.2)
 - motherBoard типу MotherBoard (використати структуру MotherBoard з розділу 4 пункт 4.1)
 
 створити змінну типу Product і спробувати поміняти їй інші значення
 
 */

print("\n\nTask 4.2 - Class:\n")

class Product {
    var name: String = "ASRock H310CV-HDV"
    var price: Double = 1717.0
    var currency: Currency = .uah
    var motherBoard: MotherBoard = newMotherBoard
}

var newProduct = Product()

newProduct.motherBoard.socet = "s1152"
newProduct.price = 2050.0
print("Назва товару: \(newProduct.name), Ціна: \(newProduct.price) \(newProduct.currency)")
print("Сокет: \(newProduct.motherBoard.socet), Процесор: \(newProduct.motherBoard.processor.rawValue)")
print("-----------------------------------------------------")
