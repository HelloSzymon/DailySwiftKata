import UIKit



func repeatEachCharacter(_ str: String) -> String {
    return str.reduce(""){ result, char in
        result + String(repeating: char, count: 2)
        
    }
}

func reverseWords(_ str: String) -> String {
    
    str.split(separator: " ").map{ String($0.reversed())}.joined(separator: " ")
}

func maxAboveZero(_ numbers: [Int]) -> Int? {
    numbers.filter{ $0 > 0}.max()
    
}

func doubleValues(_ numbers: [Int]) -> [Int] {
    numbers.compactMap{$0 * 2}
}

func isTriangle(_ a: Int, _ b: Int, _ c: Int) -> Bool {
    var array: [Int] = []
    array.append(a)
    array.append(b)
    array.append(c)
    array.sort()
    
    if array[0] + array[1] > array[2]{
        return true
    } else {
        return false
    }
    
}

func removeNegatives(_ numbers: [Int]) -> [Int] {
    numbers.filter{$0 > 0}
    
}


func squareDigits(_ num: Int) -> Int {
    let result = String(num).compactMap{ digit -> String in
        let squared = pow(Double(digit.wholeNumberValue ?? 0), 2)
        return String(Int(squared))
    }.joined()
    return Int(result) ?? 0
        
    
}
//

func wordLengths(_ str: String) -> [Int] {
//    str.split(separator: " ").map{$0.count}
    
    let splited = str.split(separator: " ")
    return splited.map{$0.count}
    
}


func shuffleCharacters(_ str: String) -> String {
    String(str.reversed())
    
}

func sumOfEvenSquares(_ numbers: [Int]) -> Int {
     numbers.filter{$0 % 2 == 0}.compactMap{ ($0 * $0)}.reduce(0, +)
   
}

func isPalindrome(_ str: String) -> Bool {

    str == String(str.reversed())
    
    
}

func countCharacters(_ str: String) -> [Character: Int] {
   
    str.reduce(into: [:]) { dict, char in
        dict[char, default: 0] += 1
        
    }
}

func areAllUnique(_ numbers: [Int]) -> Bool {
   
     Set(numbers).count == numbers.count
    
    
}
func filterByLength(_ str: String, length: Int) -> [String] {
    let arr = str.split(separator: " ")
    return arr.filter {$0.count == length
    }.map{String($0)}
    
    
}

func reverseNumbers(_ numbers: [Int]) -> [Int] {
    numbers.reversed()
    
}
func indexOfMax(_ numbers: [Int]) -> Int? {
    numbers.firstIndex(of: numbers.max() ?? 0)
}

func sumOfDigits(_ num: Int) -> Int {
    
    
    String(num).compactMap{$0.wholeNumberValue}.reduce(0, +)
}

func filterInRange(_ numbers: [Int], range: ClosedRange<Int>) -> [Int] {
    numbers.filter((range).contains)
}

func isPrime(_ num: Int) -> Bool {
    if num < 2 {
      return false
    }
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

func filterPrimes(_ numbers: [Int]) -> [Int] {
    numbers.filter{isPrime($0)}
}

func swapValues<T>(_ a: inout T, _ b: inout T) {
    
    let c = a
    a = b
    b = c
}

func splitToDigits(_ num: Int) -> [Int] {
    let seperated = (String(num).split(separator: ""))
    return seperated.map{Int($0) ?? 0}
    
}

func mostFrequentElement(_ numbers: [Int]) -> Int? {
    var frequency: [Int: Int] = [:]
    for i in numbers {
        frequency[i, default: 0] += 1
    }
    return frequency.max(by: {$0.value < $1.value})?.key
}

func commonElements(_ array1: [Int], _ array2: [Int]) -> [Int] {
 Array(Set(array1.filter{array2.contains($0)}))

  
}

func invertDictionary(_ dict: [String: Int]) -> [Int: String] {
    Dictionary(uniqueKeysWithValues: dict.map {($0.value, $0.key)})
   
}

func calculateMedian(_ numbers: [Double]) -> Double? {
    
    guard !numbers.isEmpty else {return nil }
    let sortedNumbers = numbers.sorted()
    let count = sortedNumbers.count
    
    if count % 2 == 0 {
        let midIndex = count / 2
        return ((numbers[midIndex + 1] + numbers[midIndex + 2]) / 2)
    } else {
        return sortedNumbers[count / 2]
    }
}

func shortestWord(_ sentence: String) -> String? {
    guard !sentence.isEmpty else {return nil}
    let result = String(sentence.split(separator: " ").sorted().last ?? "")
    return result
    
}
func removeBelowAverage(_ numbers: [Double]) -> [Double] {
    guard !numbers.isEmpty else {return []}
    let sum = numbers.reduce(0, +)
    let count = Double(numbers.count)
    let average = sum / count
    
    let result = numbers.filter{$0 >= average}
    
    
    
    return result
}

func primeFactors(_ num: Int) -> [Int] {
    var result: [Int] = []
    var number = num
    var divider = 2
    
    
    while number > 1 {
        if number % divider == 0 {
            result.append(divider)
            number /= divider
        }
        else {
            divider += 1
        }
    }
    return result
}

func isPalindrome(_ numbers: [Int]) -> Bool {
    numbers  == numbers.reversed()
}
func sumDictionaryValues(_ dict: [String: Int]) -> Int {
    dict.values.reduce(0, +)
    
}

