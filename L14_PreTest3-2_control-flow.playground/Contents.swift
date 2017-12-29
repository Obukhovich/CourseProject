import Foundation

/*:
 *1)*
 - Объявите и выполните функцию isValidTriangle, котрая получает на вход 3 параметра,
 длины сторон треугольника и возвращает true, если из таких трех отрезков можно сделать треугольник
 (сумма двух сторон треугольника всегда меньше третьей стороны)
 */

func isValidTriangle(_ one: Int, _ two: Int, _ three: Int) -> Bool {
    let triangle = false
    if one + two < three || two + three < one || one + three < two {
        return triangle
    } else if one + two >= three || two + three >= one || one + three >= two {
        return true
    }
    return triangle
}

isValidTriangle(10, 10, 19)


/*:
*2)*
 - Объявите и выполните функцию которая принимает массив [Double?]? и возвращает среднее значение элементов массива
 - во всех случаях, когда считать среднее значение невозможно (нет элементов) функция возвращает nil
 */

func averageValue(array: [Double?]?) -> Double {
   
    var N = 0.0
    for value in array! {
        N += value! / 2
    //} else if value == nil {
    //  return nil
    }
    return N
}


averageValue(array: [10, 10, 10, 20])

/*:
 *3)*
 - Напишите функцию которая печатает каждую вторую троку из массива [String]
 */

func twoString(_ arr: [String]) -> [String] {
    var newArr = [String]()
    for (index, item) in arr.enumerated() {
        if index % 2 != 0 {
            newArr.append(item)
        }
}
    return newArr
}

  print(twoString(["one", "two", "three", "four"]))

/*:
 *4)*
 Напишите функцию, которая должна определить, пройдет ли кирпич в отверстие. Даны константы -- размеры отверстия (длина и высота). Значения длины, ширины и высоты кирпича передаются как параметры функции.
 */

func brickSize(length: Int, hight: Int, width: Int) -> Bool {
    let lengthHole = 40
    let hightHole = 50
    
    if length <= lengthHole && hight <= hightHole {
        return true
    } else {
        return false
    }
}

brickSize(length: 30, hight: 40, width: 25)


/*:
 *5)*
 
Дан массив чисел [Int]
Напишите функцию, которая возвращает самое большое из отрицательных чисел в этом массиве.
Пример: [-10, 2, 0, 187, 1, -2, -3] -> -2
если отрицательных чисел нет вообще, то верните 0
 */



/*:
 *6)*
 
 Напишите функцию, которая для чисел от 1 до 50 выводит в консоль все числа кроме тех, что делятся на 3 или заканчиваются на 3
 */


/*:
 *7)*
 
 Напишите функцию, которая умеет решать уравнения типа
 x + 3 = 5
 3 + y = 8
 z - 9 = 1
 функция получает на вход строку типа "4 + x = 8" и возвращает решение (Double)

 */

/*
 *8)*
 напишите функцию, которая вычисляет число Pi методом Монте-Карло до тех пор пока точность будет не хуже 0.1 % (просто сравните с библиотечным значением)
 
 Кто не знает. Суть метода. Берем квадрат (0,0,1,1) и вписывем в него четверть круга с ценром в точке (0,0) и случайным образом помещаем в квадрат точки (rand(),rand())
 */
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand48(Int(time))
let randomNumber = drand48() //  случайное число от 0 до 1


