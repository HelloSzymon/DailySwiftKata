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
func reverseWords2(_ sentence: String) -> String {
    sentence.split(separator: " ").reversed().joined(separator: " ")
  
    
}

func firstUniqueIndex(_ numbers: [Int]) -> Int? {
    var numberCounts: [Int:Int] = [:]
    for number in numbers {
        numberCounts[number, default: 0] += 1
    }
    
    for (index, number) in numbers.enumerated() {
        if numberCounts[number] == 1{
            return index
    }}
    
    return nil
}

func countCharacterss(_ text: String) -> [Character: Int] {
    var lib: [Character : Int] = [:]
    var filtered = text.lowercased().filter{$0 != " "}
    
  
    for number in filtered {
        lib[number, default: 0] += 1
    }
    return lib
}

func invertMap(_ dict: [String: [Int]]) -> [Int: String] {
    var result: [Int: String] = [:]
    for (key, value) in dict {
        for number in value {
            result[number] = key
        }
    }
    return result
}
func fibonacci(_ n: Int) -> [Int] {
    
    guard n > 0 else { return  [] }
    var result: [Int] = [0, 1]

    if n == 1  {
        return [0]
    } else  {
        
        for _ in 2..<n {
            let nextNumber = result[result.count - 1] + result[result.count - 2]
            result.append(nextNumber)
            
        }}
    return result
}

func mergeUnique2(_ array1: [Int], _ array2: [Int]) -> [Int] {
    Array(Set(array1).union(Set(array2)))
}

func maxDifference(_ numbers: [Int]) -> Int? {
    guard let max = numbers.max(), let min = numbers.min() else { return nil}
    return max - min
}

func sortDictionaryByValues(_ dict: [String: Int]) -> [(String, Int)] {
     dict.sorted{$0.value < $1.value}
}
func secondLargest(_ numbers: [Int]) -> Int? {
     numbers.sorted{$0 > $1}[1]
}

func countOccurrences(_ numbers: [Int]) -> [Int: Int] {
    
    var result: [Int : Int] = [:]
    for number in numbers {
        result[number, default: 0] += 1
    }
    return result
}
func filterNumbers(_ numbers: [Int], _ condition: (Int) -> Bool) -> [Int] {
    
    numbers.filter(condition)
    
}

func maxNeighborSumIndex(_ numbers: [Int]) -> Int? {
    guard numbers.count > 2 else { return nil }
    
    var maxSum = Int.min
    var maxIndex: Int? = nil

    for i in 1..<numbers.count - 1 {
        let neighborSum = numbers[i - 1] + numbers[i] + numbers[i + 1]
        if neighborSum > maxSum {
            maxSum = neighborSum
            maxIndex = i
        }
    }
    
    return maxIndex
}

func isPermutation(_ numbers: [Int]) -> Bool {
 
    Set(1...numbers.count) == Set(numbers)
    
}

func pairSums(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for i in stride(from: 0, to: numbers.count - 1, by: 2 ) {
        result.append(numbers[i] + numbers[i + 1])
    }
    return result
}

func isArithmeticSequence(_ numbers: [Int]) -> Bool {
    guard numbers.count >= 2 else { return false }
    let difference = numbers[1] - numbers[0]
    for i in 1..<numbers.count - 1 {
        if numbers[i + 1] - numbers[i] != difference {
            return false
        }
    }
    return true
}

func canBeAnagram(_ word1: String, _ word2: String) -> Bool {
    word1.sorted() == word2.sorted()
}


func twoSum(_ numbers: [Int], _ target: Int) -> (Int, Int)? {
    for (i, number) in numbers.enumerated() {
        let comp = target - number
        for (j, other) in numbers.enumerated() where i != j {
            if other == comp {
                return (i, j)
            }
        }
    }
    return nil
}

func generateTriangleNumbers(_ n: Int) -> [Int] {
    var result = [Int]()
    var sum = 0
    for i in 1..<n {
        sum = sum + i
        result.append(sum)
    }
    
    return result
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let remainder = abs(a) % abs(b)
    if remainder != 0 {
        return gcd(b, remainder)
    } else {
        return abs(b)
    }
}

func gcdWhile(_ a: Int, _ b: Int) -> Int {
    var a = abs(a)
    var b = abs(b)
    
    while b != 0  {
        let remainder = a % b
        a = b
        b = remainder }
    
return a
}

func countUnique(_ numbers: [Int]) -> Int {
    Set(numbers).count
}

func reverseString(_ string: String) -> String {
    String(string.reversed())
}

func reverseStringReccurence(_ string: String) -> String {
    guard string.count > 1 else {return string}
    
    let firstCharacter = string.first!
    let remainingCharacter = string.dropFirst()
    return reverseString(String(remainingCharacter)) + String(firstCharacter)
    
}
func sumOfDigits3(_ number: Int) -> Int {
   
    var sum = 0
    var number = number
    
    while number > 0 {
        sum += number % 10
        number /= 10
    }
    return sum
}

func reverseArray(_ array: [Int]) -> [Int] {
    guard !array.isEmpty else {return []}
    var firstNumber = array.first!
    var restNumber = Array(array.dropFirst())
    
    
    return reverseArray(restNumber + [firstNumber])
}

func isPrime2(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    
    for i in 2..<Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

func fibonacciRecursive(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n  == 1 {
        return 1
    }
    
    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2)
}

func filterDivisible(_ numbers: [Int], by divisor: Int) -> [Int] {
    var result = [Int]()
    
    for i in numbers {
        if i % divisor == 0 {
            result.append(i)
        }
    }
    return result
    
}

func filterDivisible2(_ numbers: [Int], by divisor: Int) -> [Int] {
    numbers.filter{$0 % divisor == 0}
}

func findMissingNumber(_ numbers: [Int]) -> Int {
    var sortedNumber = numbers.sorted()
    for i in 1...sortedNumber.count {
      
        if sortedNumber[i - 1] != i {
            return i
        }
    }
    return sortedNumber.count + 1
}

func countVowels(_ string: String) -> Int {
    
    let vovels: Set<Character> = ["a", "e", "i", "o", "u"]
    return string.lowercased().filter{vovels.contains($0)}.count
}

func isPowerOfTwo(_ number: Int) -> Bool {
    guard number > 0 else {return false}
    var num = number
    
    while num > 1 {
        if num % 2 != 0 {
            return false
        }
        num /= 2
    }
    return true
}

func gcdOfThree(_ a: Int, _ b: Int, _ c: Int) -> Int {
    var a = abs(a)
    var b = abs(b)
    var c = abs(c)

    while b != 0 {
        let rest = a % b
        a = b
        b = rest
    }

    while c != 0 {
        let rest = a % c
        a = c
        c = rest
    }
    return a
}

func isPerfectNumber(_ number: Int) -> Bool {

    var sum = 0
    for i in 1..<number {
        if number % i == 0 {
            sum += i
        }
    }

    return sum == number
}
func reverseNumber(_ number: Int) -> Int {
     var reversed = 0
    var number = number
    var digit = 0

    while number != 0 {
        digit = number % 10
        reversed = reversed * 10 + digit
        number = number / 10
    }


    return reversed
}

func commonElementss(_ array1: [Int], _ array2: [Int]) -> [Int] {
    guard array1.isEmpty, array2.isEmpty else {return []}
    let set1 = Set(array1.sorted())
    let set2 = Set(array2.sorted())

    let result = Array(set1.intersection(set2))

    return result
}

func toBinary(_ number: Int) -> String {
    var result = ""
    var number = number
    while number != 0 {
        if number % 2 == 0 {
            result +=  "0"

        } else {
            result += "1"
        }
        number /= 2
    }
    return String(result.reversed())
}

func isNumericPalindrome(_ number: Int) -> Bool {
    var number = number
    var result = 0
    let firstNumber = number
var digit = 0
    while number != 0 {
        digit = number % 10
        result = result * 10 + digit
        number = number / 10
    }
    return  result == firstNumber

}

func numberToWords(_ number: Int) -> String {

    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    return formatter.string(from: number as NSNumber) ?? "Invalid number"


}

func countCharacterOccurrences(_ string: String) -> [Character: Int] {
    var result = [Character : Int]()
    for i in string {
        result[i, default: 0] += 1
    }


    return result
}

func factorial(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n != 0 {
        result = result * n
        n -= 1
    }

    return result
}

func areAnagrams(_ str1: String, _ str2: String) -> Bool {

    str1.sorted() == str2.sorted()

}
func findSmallest(_ array: [Int]) -> Int {
    var smallest = array[0]

    for i in array {
        if i < smallest {
            smallest = i
        }
    }

    return smallest
}

func findPrimes(_ n: Int) -> [Int] {
    var n = n
    var number = 2
    var result = [Int]()

    while number <= n {
        var isPrime = true
        var divider = 2

        while divider * divider <= number {
            if number % divider == 0 {
                isPrime = false
                break
            }
            divider += 1
        }
        if isPrime {
            result.append(number)
        }
        number += 1
    }
    return result
    }

func fibonacciIterative(_ n: Int) -> [Int] {
    var result = [0, 1]

    if n <= 0 {
        return []
    }
    if n == 1  {
        return [0] }

            for _ in 2..<n {
                let nextNumber = result[result.count - 1] + result[result.count - 2]
                result.append(nextNumber)

            }

    return result
}

func sumOfDigits4(_ number: Int) -> Int {
    var result = 0
    var number  = number
    while number > 0 {

        result += number % 10
        number /= 10
    }

    return result
}

func reverseWord(_ word: String) -> String {
    String(word.reversed())
}

func commonMultiples(_ a: Int, _ b: Int, _ n: Int) -> [Int] {
    var multiple = a * b
    var result = [Int]()

    for i in 1...n {
        result.append(multiple * i)
    }

    return result
}

func grandCommonDivider(a: Int, b : Int) -> Int {

    var a = a
    var b = b

    while b != 0 {
        let temp = b
        b = b % a
        a = temp

    }

    return a
}

func lowestCommonMultiples(a: Int, b: Int) -> Int {

    a * b / (grandCommonDivider(a: a, b: b))
}

func commonMultiples2(_ a: Int, _ b: Int, _ n: Int) -> [Int] {

    var result = [Int]()
    for i in 1...n {
        result.append(lowestCommonMultiples(a: a, b: b) * i)
    }
    return result
}

func mostFrequentNumber(_ array: [Int]) -> Int {

    var frequency: [Int: Int] = [:]
    for i in array {
        frequency[i, default: 0] += 1
    }

    return frequency.max{
        $0.value < $1.value || $0.value == $1.value && $0.key > $1.key}?.key ?? 0
}

func isHappyNumber(_ number: Int) -> Bool {
    var number = number
    var seenNumber = Set<Int>()

    while number != 1 {
        let digits = String(number).compactMap { $0.wholeNumberValue }
        let sumOfSquares = digits.map{$0 * $0}.reduce(0, + )

        if seenNumber.contains(sumOfSquares) {
            return false
        }
        seenNumber.insert(sumOfSquares)
        number = sumOfSquares

    }


    return true
}

func isPerfectNumber(number: Int) -> Bool {
    var sum = 1

    for i in 1..<number {
        if number %  i == 0 {
                sum += i
            }

        }
    return sum == number

}

func perfectNumbersInRange(_ range: Int) -> [Int] {

    var result = [Int]()
    for number in 1...range {
        if isPerfectNumber(number: number) {
            result.append(number)
        }
    }
    return result
}

func caesarCipher(_ text: String, _ shift: Int) -> String {
    var moved = ""

    for char in text {
        if let asciiValue = char.asciiValue {
            let isUpperCase = char.isUppercase
            let base = isUpperCase ? Int(65) : Int(97)
            let shiftedValue = (Int(asciiValue) - base + shift) % 26 + base

            if let newChar = UnicodeScalar(shiftedValue) {
                moved.append(Character(newChar))
            }
        } else {

            moved.append(char)
        }
    }

    return moved
}

func evenNumbers(_ array: [Int]) -> [Int] {
    var result = [Int]()
    for i in array {
        if i % 2 == 0 {
            result.append(i)
        }
    }


    return result
}

func countVowels2(_ text: String) -> Int {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]

    return text.lowercased().filter{vowels.contains($0)}.count


}

func fibonacciBelow(_ n: Int) -> [Int] {
    var fib = [0, 1]

    guard n > 1 else {return []}

    while true {
        let nextFib = fib[fib.count - 1] + fib[fib.count - 2]
        if nextFib >= n {
            break
        }
        fib.append(nextFib)
    }


    return fib
}

func wordCount(_ text: String) -> Int {

    text.split(separator: " ").count


}

func mirrorArray(_ array: [Int]) -> [Int] {
    array + array.reversed()

}
func sortDigits(_ number: Int) -> Int {
     Int(String(number).split(separator: "").sorted().joined()) ?? 0
}

func primeNumbersInRange(_ range: Int) -> [Int] {

    guard range >= 2 else {return [] }
    var result = [Int]()


    for num in 2...range {
        var isPrime = true

        for divisor in 2..<Int(sqrt(Double(range))) + 1 {
            if num % divisor == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            result.append(num)
        }
    }

    return result
}

func numberToWords2(_ number: Int) -> String {
    var numFormatter = NumberFormatter()
    numFormatter.numberStyle = .spellOut
    numFormatter.locale = .init(identifier: "pl_PL")
    return numFormatter.string(from: NSNumber(value: number)) ?? "zero"
}

func isAnagram(_ first: String, _ second: String) -> Bool {
    first.sorted() == second.sorted()
}

func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {

    var a = a
    var b =  b

    while b != 0 {
        var temp = b
        b = a % b
        a = temp
    }
    return a


}


func isPalindromeNumber(_ number: Int) -> Bool {
    var number  = String(number)
    var number2 = String(number.reversed())
    return    number == number2
}

func rot13(_ text: String) -> String {

    var result = String()
    for char in text {

        if let asciiValue = char.asciiValue {
            let isUppercased = char.isUppercase
            let base = isUppercased ? UInt8(65) : UInt8(87)

            if char.isLetter {
                let shifted = (asciiValue - base + 13) % 26 + base
                result.append(Character(UnicodeScalar(shifted)))
            } else {
                result.append(char)
            }
        }
    }

    return result
}

func countOccurrences2(_ array: [Int]) -> [Int: Int] {

    var result = [Int: Int]()
    for i in array {

        result[i, default: 0] += 1

    }

    return result

}

func secondLargest2(_ array: [Int]) -> Int? {
    guard array.count >= 2 else { return nil }
    var sorted = Array(Set(array).sorted())
    guard sorted.count >= 2 else {return nil}
    return sorted[sorted.count - 2]

}

func sumDigits(_ number: Int) -> Int {

    String(abs(number))
        .compactMap{Int(String($0))}
        .reduce(0, +)


}

func isPerfectNumber2(_ number: Int) -> Bool {

    guard number >= 1 else {return false}
    var sum = 0
    for i in 1...(number/2) {
        if number % i == 0 {
            sum += i
        }
    }

    return sum == number
}

func reverseWords3(_ text: String) -> String {

    let words = text.components(separatedBy: CharacterSet.whitespaces)
      return words.reversed().joined(separator: " ")


}

func uniqueCharacters(_ text: String) -> Bool {
    Set(text).count == text.count
}

func rotateArray(_ array: [Int], _ n: Int) -> [Int] {


    guard !array.isEmpty else {return []}
    let shift = n % array.count


    return Array(array.suffix(shift) + array.dropLast(shift))
}

func multiplyMatrices(_ a: [[Int]], _ b: [[Int]]) -> [[Int]]? {

    let rowsA = a.count
    let colsA = a.first?.count ?? 0
    let rowsb = b.count
    let colsb = b.first?.count ?? 0

    guard colsA == rowsb else {return nil}

    var result = Array(repeating: Array(repeating: 0, count: colsb), count: rowsA)

    for i in 0..<rowsA {
        for j in 0..<colsb {
            for k in 0..<colsA {
                result[i][j] += a[i][k] * b[k][j]
            }
        }
    }

    return result
}
func lastWord(_ text: String) -> String {

    text.components(separatedBy: .whitespaces).filter{$0.isEmpty}.last ?? ""
}

func removeDuplicates(_ array: [Int]) -> [Int] {

    var seen = Set<Int>()
    return array.filter{seen.insert($0).inserted}
}

func rotateLeft(_ array: [Int], _ n: Int) -> [Int] {
    guard !array.isEmpty else {return []}
    let shift = n % array.count

    return Array(array.dropFirst(shift) + array.prefix(shift))

}
func reverseMatrix(_ matrix: [[Int]]) -> [[Int]] {

    Array(matrix.reversed())
}

func isPowerOfTwo2(_ number: Int) -> Bool {

    guard number > 0 else {return false}
    var num = number

    while num > 1 {
        if num % 2 != 0 {
            return false }
        else {
            num /= 2
        }
    }
    return true
}

func countUnique2(_ array: [Int]) -> Int {

     Set(array).count
}

func diagonalSum(_ matrix: [[Int]]) -> Int {
    var sum =  0
    for i in 0..<matrix.count {
        sum += matrix[i][i]
    }
    return sum
}

func findMedian(_ array: [Int]) -> Double? {
    guard !array.isEmpty else { return nil }

    let sortedArray = array.sorted()
    let mid = sortedArray.count / 2

    if sortedArray.count % 2 != 0 {
        return Double(sortedArray[mid])
    } else {
        return (Double(sortedArray[mid - 1]) + Double(sortedArray[mid])) / 2
    }
}

import Foundation

func isPrime4(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }

    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }

    return true
}
func rotateRight(_ array: [Int], _ n: Int) -> [Int] {
    guard !array.isEmpty else {return []}
    let shift = n % array.count

    return Array(array.suffix(shift) + array.prefix(array.count - shift))




}

func transposeMatrix(_ matrix: [[Int]]) -> [[Int]] {
    guard !matrix.isEmpty else {return []}
    let row = matrix.count
    let column = matrix[0].count

    var transposed = Array(repeating: Array(repeating: 0, count: row), count: column)

    for i in 0..<row {
        for j in 0..<column {
            transposed[j][i] = matrix[i][j]
        }
    }

    return transposed
}
func sumInRange(_ a: Int, _ b: Int) -> Int {

    Array(a...b).reduce(0, +)

}

func dotProduct(_ a: [Int], _ b: [Int]) -> Int? {

    guard a.count == b.count else { return nil }
    return zip(a, b).map(*).reduce(0, +)
}

func isPalindrome3(_ text: String) -> Bool {

    text == String(text.reversed())


}
func reverseWords4(_ text: String) -> String {

    text.components(separatedBy: " ").reversed().joined(separator: " ")




}
func factorial3(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n != 0 {

        result = result * n
        n -= 1
    }


    return result
}

func factorialRecurrence(_ n: Int) -> Int {

    guard n > 1 else {return 1}


    return n * factorialRecurrence(n - 1)
}

func factorialIterative(_ n: Int) -> Int {

    var result = 1

    for i in 1...max(1, n) {
        result *= n
    }

    return result
}

func mostFrequentElement2(_ array: [Int]) -> Int? {
    guard !array.isEmpty else {return nil}
    var resul = [Int: Int]()

    for i in array {

        resul[i, default: 0] += 1
    }

    return resul.max {$0.value < $1.value}?.key
}

func rotateMatrix(_ matrix: [[Int]]) -> [[Int]] {

    guard !matrix.isEmpty else {return []}
    let transposed = transposeMatrix2(matrix)
    return transposed.map{$0.reversed()}

}

func transposeMatrix2(_ matrix: [[Int]]) -> [[Int]] {
    guard !matrix.isEmpty else  {return []}

    let rows = matrix.count
    let cols = matrix[0].count

    var transposed = Array(repeating: Array(repeating: 0, count: rows), count: cols)

    for i in 0...rows {
        for j in 0..<cols {
            transposed[j][i] = matrix[i][j]
        }
    }
    return transposed

}

func longestCommonPrefix(_ words: [String]) -> String {

    var key = ""
    var tem = Array(words[0])

    for i in 0..<tem.count {
        key.append(tem[i])
        for item in words {
            if !item.hasPrefix(key) {
                return String(key.dropLast(1))
            }
        }
    }

    return key
}

func permutations(_ text: String) -> [String] {

    if text.count <= 1 {
        return [text]
    }
    var result: [String] = []

    for (index,char) in text.enumerated() {
        var remaining = text
        remaining.remove(at: remaining.index(text.startIndex, offsetBy: index))
        let subPermutations = permutations(remaining)

        for perm in subPermutations {
            result.append(String(char) + perm)
        }
    }

    return result
}
func areAnagrams2(_ a: String, _ b: String) -> Bool {

    a.sorted() == b.sorted()

}

func insertionSort(_ array: [Int]) -> [Int] {
    var array = array
    for i in 1..<array.count {
        let key = array[i]
        var j = i - 1
        while j >= 0 && array[j] > key {
            array[j + 1] = array[j]
            j -= 1
        }
        array[j + 1] = key
    }
    return array
}

func fibonacci5(_ n: Int) -> Int {

    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }

    return fibonacci5(n - 1) + fibonacci5(n - 2)

}

func rotateMatrix180(_ matrix: [[Int]]) -> [[Int]] {
    guard !matrix.isEmpty else {return []}

    return matrix.reversed().map{$0.reversed()}
}

let matrix = [
    [1, 2],
    [4, 5]
]

func secondSmallest(_ array: [Int]) -> Int? {
    guard array.count >= 2 else {return nil }

    return array.sorted()[1]

}



func isPerfectNumber3(_ n: Int) -> Bool {

    var sum = 0

    for i in 1..<n {
        if n % i == 0 {
            sum += i
        }
    }

    return sum == n

}

func generateSubsets(_ array: [Int]) -> [[Int]] {

    var result = [[Int]]()

    func backtrack(_ index: Int, _ currentSubset: [Int]) {
        if index == array.count {
            result.append(currentSubset)
            return
        }

        backtrack(index + 1, currentSubset)

        backtrack(index + 1, currentSubset + [array[index]])
    }
    backtrack(0, [])
    return result


}

func removeDuplicates2(_ array: [Int]) -> [Int] {
    Array(Set(array)).sorted()
}


func mostFrequentElement3(_ array: [Int]) -> Int? {

    guard !array.isEmpty else {return nil}
    var dic = [Int:Int]()
    for i in array {
        dic[i, default: 0] += 1
    }
    return dic.max{$0.value < $1.value}?.key
}
func rotateMatrix270(_ matrix: [[Int]]) -> [[Int]] {

    guard !matrix.isEmpty else {return []}
    var col = matrix.count
    var rows = matrix[0].count

    var rotated = Array(repeating: Array(repeating: 0, count: rows), count: col)
    for i in 0..<rows {
        for j in 0..<col {
            rotated[j][rows - 1 - i] = matrix[i][j]
        }
    }

    return rotated

}
let matrix2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

func isPalindrome(_ num: Int) -> Bool {

    String(num) ==    String((String(num).reversed()))

}


func reverseWords5(_ sentence: String) -> String {

    sentence.split(separator: " ", omittingEmptySubsequences: true).reversed().joined(separator: " ")

}
func isValidBrackets(_ s: String) -> Bool {
    var stack: [Character] = []
    let matchningBrackets: [Character: Character] =  [")": "(", "}": "{", "]": "["]

    for char in s {
        if let openBracket = matchningBrackets[char] {
            if stack.isEmpty || stack.removeLast() != openBracket {
                return false
            }
        } else {
            stack.append(char)
        }
    }


    return stack.isEmpty
}

func generatePermutations(_ text: String) -> [String] {

    var results = [String]()
    var characters = Array(text)

    generatePermutationsHelper(&characters, 0, result: &results)


    return results}

func generatePermutationsHelper(_ chars: inout [Character], _ index: Int, result: inout [String] ) {
    if index == chars.count - 1 {
        result.append(String(chars))
        return
    }
    for i in index..<chars.count {
        chars.swapAt(index, i)
        generatePermutationsHelper(&chars, index + 1, result: &result)
        chars.swapAt(index, i)
    }
}
func isPrime3(_ n: Int) -> Bool {

    guard n >= 2 else {return false }

    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func flatten(_ array: [[Int]]) -> [Int] {
    array.flatMap{$0}
}

func isPalindromeRecursive(_ text: String) -> Bool {

    let cleanedText = text.filter{$0.isLetter || $0.isNumber}.lowercased()
    if cleanedText.count < 1 {
        return true
    }
    if cleanedText.first != cleanedText.last {
        return false
    }
    return isPalindromeRecursive(String(cleanedText.dropFirst().dropLast()))


}

func rotateMatrixLeft(_ matrix: [[Int]]) -> [[Int]] {
    guard !matrix.isEmpty else {return []}
    var col = matrix[0].count
    var row = matrix.count
    var matrix = Array(repeating: Array(repeating: 0, count: row), count: col)

    for i in 1..<row {
        for j in 1..<col {
            matrix[col - 1 - j][i] = matrix[i][j]

        }
    }

    return matrix
}


func generateSubstrings(_ text: String) -> [String] {

    var result = [String]()

    for i in 0..<text.count {

        for j in i..<text.count {
            let start = text.index(text.startIndex, offsetBy: i)
            let end = text.index(text.startIndex, offsetBy: j + 1)
            result.append(String(text[start..<end]))
        }
    }

    return result
}

func countUniqueCharacters(_ text: String) -> Int {
    guard !text.isEmpty else {return 0}
    return Set(text).count
}

func generateSimplePermutations(_ text: String) -> [String] {

    guard text.count > 1 else {return []}

    if text.count == 1 {
        return [text]
    }
    var result = [String]()

    for (index, char) in text.enumerated() {

        var remainingChars = text
        remainingChars.remove(at: remainingChars.index(remainingChars.startIndex, offsetBy: index))
        let permutations = generateSimplePermutations(remainingChars)
        for perm in permutations {
            result.append(String(char) + perm)
        }
    }

    return result

}

func removeNonAlphabetic(_ text: String) -> String {
text.filter{$0.isLetter}

}

removeNonAlphabetic("")

func longestWord(_ sentence: String) -> String {

    String(sentence.filter{$0.isLetter || $0.isWhitespace}.split(separator: " ").max() ?? "")
}
longestWord("Ala ma kota, ale pies jest większy!")

func rotateMatrix180second(_ matrix: [[Int]]) -> [[Int]] {

    guard !matrix.isEmpty else { return [] }
    let row = matrix.count
    let col = matrix[0].count

    var result = Array(repeating: Array(repeating: 0, count: col), count: row)

    for i in 0..<row {
        for j in 0..<col {
            result[row - 1 - i][col - 1 - j] = matrix[i][j]
        }
    }

    return result



}

func reverseStringRecursive(_ text: String) -> String {

    guard text.count > 1 else {return text}

    return String(text.last!) + reverseString(String(text.dropLast()))
}
reverseStringRecursive("abc")



func simplePermutations(_ text: String) -> [String] {

    let characters = Array(text)
    var permutations = [String]()

    var queue = [[Character]]()

    for char in characters {
        var newQueue: [[Character]] = []
        for perm in queue {
            for i in 0...perm.count {
                var newPerm = perm
                newPerm.insert(char, at: i)
                newQueue.append(newPerm)
            }
        }
        queue = newQueue
    }
    for perm in queue {
        permutations.append(String(perm))
    }

    return permutations
}

func isIsogram(_ text: String) -> Bool {

    Set(text.lowercased()).count == text.lowercased().count
}


func multiplyMatrices2(_ matrix1: [[Int]], _ matrix2: [[Int]]) -> [[Int]]? {

    let rows1 = matrix1.count
    let cols1 = matrix1[0].count
    let rows2 = matrix2.count
    let cols2 = matrix2[0].count

    guard matrix1[0].count == matrix2.count else {return nil}

    var result = Array(repeating: Array(repeating: 0, count: cols2), count: rows1)

    for i in 0..<rows1 {
        for j in 0..<cols2 {
            for k in 0..<cols1{
                result[i][j] +=  matrix1[i][k] * matrix2[k][j]
            }
        }
    }
    return result



}

func mostFrequentLetter(_ text: String) -> Character? {
    guard !text.isEmpty else {return nil }

    var dict = [Character: Int]()
    for char in text {

        dict[char, default: 0] += 1
    }

    return dict.max{
        $0.value < $1.value
    }?.key
}

func sumDigitsRecursive(_ num: Int) -> Int {

    if num < 10 {
        return num
    }
    return (num % 10) + sumDigitsRecursive(num / 10)
}


sumDigitsRecursive(1234)


func transposeMatrix3(_ matrix: [[Int]]) -> [[Int]] {

    let  row = matrix.count
    let col = matrix[0].count

    var array = Array(repeating: Array(repeating: 0, count: row), count: col)
    for i in 1..<col {
        for j in 1..<row {
            array[i][j] = matrix[j][i]

        }
    }
    return array

}

func power(_ base: Int, _ exp: Int) -> Int {
    if exp == 0 {
        return 1
    }

    return base * power(base, exp - 1)

}
enum AppError: Error {
    case decodingError(String)
    case networkError(String)
}
func error() -> Result<String, Error> {
    if Bool.random() {
        return .success("well done")
    } else {
        return .failure(AppError.networkError("Network"))
    }
}

func hasDuplicate(_ array: [Int]) -> Bool {

    array.count == Set(array).count
}

func hasDuplicateOpt(_ array: [Int]) -> Bool {
    var seen = Set<Int>()

    for i in array {
        if seen.contains(i) {
            return true
        } else {
            seen.insert(i)
        }
    }

    return false
}
func fibonacci2(_ n: Int) -> [Int] {

    guard n > 0 else { return [] }
      if n == 1 { return [0] }
      if n == 2 { return [0, 1] }

      var result = [0, 1]

    for _ in 2..<n {

        let next = result[result.count - 1] + result[result.count - 2]
        result.append(next)

    }

    return result

}
//abc = a, b, c, ab, ac, bc, abc
func generateSimplePermutations2(_ text: String) -> [String] {

    var permutations = [String]()

    for letter in text {

   var newPermutations = [String]()
        for permutation in newPermutations {
            for i in 0...permutation.count {
                var new = permutation
                let index = permutation.index(permutation.startIndex, offsetBy: i)
                new.insert(letter, at: index)
                newPermutations.append(new)
            }
        }
        permutations = newPermutations
    }

    return permutations
}


func isValidEmail(_ email: String) -> Bool {

    if email.contains("@") {
        let separated = email.split(separator: "@")
        let secondPart = separated[1]
        if secondPart.contains(".") {
            return true
        }
    }
    return false
}
isValidEmail("kkjndspl.pl")

func isValidEmail2(_ email: String) -> Bool {
    let parts = email.split(separator: "@")

    guard parts.count == 2 else { return false }
    let domain = parts[1]

    return domain.contains(".")
}
isValidEmail2("kkjndspl.pl")


func areAnagrams3(_ first: String, _ second: String) -> Bool{

    first.sorted() == second.sorted()
}

func wordCount3(_ sentence: String) -> Int {

    sentence.filter{$0.isLetter || $0.isWhitespace}.split(separator: " ").count

}
wordCount3("asnkdka nskljnas, nsadk")

func pairCharacters(_ text: String) -> [String] {
    var result = [String]()
    let chars = Array(text)
    var i = 0

    while i < chars.count {
        if i + 1 < chars.count {
            result.append("\(chars[i])\(chars[i + 1])")
        } else {
            result.append("\(chars[i])_")
        }
        i + 2
    }

    return result
}
//["ab", "cd", "e_"]

func smallestMissingPositive(_ nums: [Int]) -> Int {


    let set = Set(nums)

    var i = 1

    while true {
        if !set.contains(i){
            return i
        }
        i + 1
    }


}

func moveZeroesToEnd(_ array: [Int]) -> [Int]{
    var result = [Int]()
    let zeros = array.filter{$0 == 0}

    result = array.filter{$0 != 0} + zeros

    return result
}


func fizzBuzz(_ n: Int) -> [String] {

    var result = [String]()

    for i in  1...n {
        if i % 3 == 0 && i % 5 == 0 {
                 result.append("FizzBuzz")
             } else if i % 3 == 0 {
                 result.append("Fizz")
             } else if i % 5 == 0 {
                 result.append("Buzz")
             } else {
                 result.append(String(i))
             }
    }

    return result
}

func isPalindrome4(_ text: String) -> Bool {

    let cleanText = text.lowercased().filter{$0.isLetter}
     return cleanText == String(cleanText.reversed())
}


func countCharacters2(_ text: String) -> [Character: Int] {

    var result: [Character: Int] = [:]
    for character in text {
        result[character, default: 0] += 1

    }
    return result
}
func countUniques(_ array: [Int]) -> Int {
     var result = [Int]()
    var countUniqe: [Int: Int] = [:]
    for number in array {
        countUniqe[number, default: 0] += 1
    }

    for i in countUniqe.values {
        if i == 1 {
            result.append(i)
        }
    }

    return result.count
}
countUniques([1, 2, 2, 3, 4, 4])


func reverseWords6(_ sentence: String) -> String {
    String(sentence.split(separator: " ", omittingEmptySubsequences: true).reversed().joined(separator: " ").reversed())


}


func hasSumPair(_ array: [Int], target: Int) -> Bool {

    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] + array[j] == target {
                return true
            }
        }
    }
    return false

}

func sortEvenOdd(_ array: [Int]) -> [Int] {
    var resultEven = [Int]()
    var resultOdd = [Int]()

    for i in array {
        if i % 2  == 0{
            resultEven.append(i)
        } else {
            resultOdd.append(i)
        }
    }
    resultEven = resultEven.sorted()
     resultOdd = resultOdd.sorted(by: >)
  resultEven.append(contentsOf: resultOdd)
    return resultEven
}

sortEvenOdd([5, 3, 2, 8, 1]) /*→ [2, 8, 5, 3, 1]*/


func longestCommonPrefix3(_ words: [String]) -> String {

    guard let first = words.first else {return ""}
    var prefix = ""

    for (i, char) in first.enumerated() {
        for word in words {
            if i >= word.count || word[word.index(word.startIndex, offsetBy: i)] != char {
                return prefix
            }
        }
        prefix.append(char)
    }
    return prefix
}



func reverseLetters(_ text: String) -> String {
    var letters = Array(text.filter { $0.isLetter }.reversed())
    var result = ""

    for char in text {
        if char.isLetter {
            result.append(letters.removeFirst())
        } else {
            result.append(char)
        }
    }

    return result
}
// "a,b$c" → "c,b$a"
// Odwróć tylko litery, zostaw znaki specjalne na miejscu.


func isCleanPalindrome(_ text: String) -> Bool {
    var cleanText = text.lowercased().split(separator: " ").joined()
    return cleanText == String(cleanText.reversed())

}

isCleanPalindrome("A man a plan a canal Panama")
// "A man a plan a canal Panama" → true


func mostFrequent(_ array: [Int]) -> Int? {

    guard !array.isEmpty else { return nil }

    var resultDict = [Int:Int]()
    for number in array {
        resultDict[number, default: 0] += 1
    }

    return resultDict.max(by: {$0.value < $1.value})?.key
}
mostFrequent([1, 2, 3, 4, 1])

func containsCaseInsensitive(_ base: String, _ search: String) -> Bool {


     base.lowercased().contains(search.lowercased())

}


func formatNumber(_ num: Int) -> String {
    var numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal


    return numberFormatter.string(from: NSNumber(value: num)) ?? ""

}

func isIsogram3(_ word: String) -> Bool {

    word.lowercased().count == Set(word.lowercased()).count
}

func isFullSequence(_ array: [Int]) -> Bool {

    let n = array.count
    let expectedSet = Set(1...n)
    return expectedSet == Set(array)

}

func groupAnagrams(_ words: [String]) -> [[String]] {

    var groups = [String: [String]]()

    for word in words {
        let sorted = String(word.sorted())
        groups[sorted, default: []].append(word)
    }

    return Array(groups.values)

}
groupAnagrams(["bat", "tab", "cat", "tac", "act"])


func intersection(_ a: [Int], _ b: [Int]) -> [Int] {

 Array(Set(a.filter{b.contains($0)}))
}
intersection([1,2,2,1], [2,2])

func isNumericPalindrome3(_ number: Int) -> Bool {

    String(number) == String(String(number).reversed())
}
isNumericPalindrome3(123)
