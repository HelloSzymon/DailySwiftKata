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

