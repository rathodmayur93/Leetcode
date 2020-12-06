//
//  main.swift
//  Leetcode
//
//  Created by ds-mayur on 27/9/2020.
//

import Foundation
enum Operations : String {
    case mountainArray
    case greatestElementReplace
    case removeDublicate
    case moveZeros
    case sortByParity
    case squareOfSortedArray
    case heightChecker
    case thirdMax
    case disappearedNo
    case addTwoNumber // Problem Solving started
    case longestSubstring
    case findLongestPalindromicSubstring
    case greatestNoOfCandies
    case shuffleArray
    case defangingIPAddress
    case jewelsAndStones
    case maxDepthOfParatheses
    case noOfStepsToReduceToZero
    case shuffleString
    //MARK:- Array Problems Enum
    //MARK: Easy
    case sumOf1DArray
    case decompressList
    case targetArray
    case XORArray
    case sumOfOddLengthSuArray
    case minTimeVisitingPoint
    case diagonalsum
    case noOfStudentDoingHW
    case maxProdOfTwoElement
    case flipImageMatrix
    case integerSumUptoZero
    case negativeNumberInArray
    case discountInShop
    case arrayEqualByReversingSubArray
    case arrayPairSum
    case canMakeArithmaticProgression
    case luckyNumber
    case sortByParityII
    case kWeakestRow
    case averageSalary
    case commonCharacters
    case relativeSortArray
    case countCharacters
    case fibbonacci
    case minAbsDiff
    case findTheDistanceValue
    case trimMean
    case toeplitzMatrix
    case countLargestGroup
    case minStartValue
    case specialNumberInMatrix
    case frequencySort
    case findLucky
    case dayOfWeek
    case specialArray
    case transposeMatrix
    case slowestKey
    case shiftGrid
    case sumofEvenQueries
    case matrixReshaped
    case findSpecialInteger
    case majorityElement
    case numberSmallByFreq
    case fairCandySwap
    case monotonicArray
    case maxProfit
    case arrayRank
    case mostVisited
    case containsDublicate
    case twoSum
    case distanceBetweenBusStop
    case findShortestSubArray
    case pascalTriangle
    case findKthPositive
    case ticTacToe
    case missingNo
    case imageSmoother
    case pascalRow
    case maxWealth
    case minCostClimbingStairs
    case largeGroupPositions
    case canThreePartEqualSum
    case isOneBitCharacter
    case divideBy5
    case maxSubArray
    //MARK:- String Problems Enum
    //MARK: Easy
    case balancedString
}

var currentOperation : Operations = .maxSubArray

switch currentOperation {
case .mountainArray:
    executeMountainArray()
case .greatestElementReplace:
    replaceGreatestElement()
case .removeDublicate:
    removeDublicateItems()
case .moveZeros:
    moveZeros()
case .sortByParity:
    sortArrayByParity()
case .squareOfSortedArray:
    squareOfSortedArray()
case .heightChecker:
    heightCheckerAlgo()
case .thirdMax:
    findThirdMaxAlgo()
case .disappearedNo:
    findDisappearedNumbers()
case .addTwoNumber:
    addTwoNumber()
case .longestSubstring:
    findLongestSubstring()
case .findLongestPalindromicSubstring:
    findLongestPalindromSubstring()
case .greatestNoOfCandies:
    findGreatestNumberOfCandies()
case .shuffleArray:
    shuffleArray()
case .defangingIPAddress:
    defangIPAddress()
case .jewelsAndStones:
    numberOfJewelsInStone()
case .maxDepthOfParatheses:
    maxDepthofParantheses()
case .noOfStepsToReduceToZero:
    numberOfStepsToReduceToZero()
case .shuffleString:
    shuffleString()
//MARK:- Array Problems Functions
//MARK: Easy
case .sumOf1DArray:
    ArrayMain().cummulativeSumOfArray()
case .decompressList:
    ArrayMain().decompressEncodedList()
case .targetArray:
    ArrayMain().targetArray()
case .XORArray:
    ArrayMain().xorArray()
case .sumOfOddLengthSuArray:
    ArrayMain().sumOfOddLengthSubArray()
case .minTimeVisitingPoint:
    ArrayMain().minTimeVisitingAllPoints()
case .diagonalsum:
    ArrayMain().diagonalSum()
case .noOfStudentDoingHW:
    ArrayMain().findNumberOfStudentDoingHW()
case .maxProdOfTwoElement:
    ArrayMain().findMaxProdofTwoElement()
case .flipImageMatrix:
    ArrayMain().flipImageMatrix()
case .integerSumUptoZero:
    ArrayMain().integerSumUptoZero()
case .negativeNumberInArray:
    ArrayMain().countNegativeNumber()
case .discountInShop:
    ArrayMain().discountInShop()
case .arrayEqualByReversingSubArray:
    ArrayMain().cabArrayBeEqual()
case .arrayPairSum:
    ArrayMain().arrayPairSum()
case .canMakeArithmaticProgression:
    ArrayMain().canMakeArithmaticProgression()
case .luckyNumber:
    ArrayMain().luckyNumber()
case .sortByParityII:
    ArrayMain().sortArrayByParity()
case .kWeakestRow:
    ArrayMain().kWeakestRow()
case .averageSalary:
    ArrayMain().findAverageSalary()
case .commonCharacters:
    ArrayMain().findCommonCharacter()
case .relativeSortArray:
    ArrayMain().relativeSortArray()
case .countCharacters:
    ArrayMain().countCharacters()
case .fibbonacci:
    ArrayMain().fibbonacci()
case .minAbsDiff:
    ArrayMain().minAbsDifference()
case .findTheDistanceValue:
    ArrayMain().findTheDistanceValue()
case . trimMean:
    ArrayMain().trimMean()
case .toeplitzMatrix:
    ArrayMain().isToeplitzMatrix()
case .countLargestGroup:
    ArrayMain().countLargestGroup()
case .minStartValue:
    ArrayMain().minStartValue()
case .specialNumberInMatrix:
    ArrayMain().numSpecial()
case .frequencySort:
    ArrayMain().frequencySort()
case .findLucky:
    ArrayMain().findLucky()
case .dayOfWeek:
    ArrayMain().weekDay()
case .specialArray:
    ArrayMain().specialArray()
case .transposeMatrix:
    ArrayMain().transposeMatrix()
case .slowestKey:
    ArrayMain().slowestChar()
case .shiftGrid:
    ArrayMain().shiftGrid()
case .sumofEvenQueries:
    ArrayMain().sumOfEvenAfterQueries()
case .matrixReshaped:
    ArrayMain().matrixReshaped()
case .findSpecialInteger:
    ArrayMain().findSpecialInteger()
case .majorityElement:
    ArrayMain().majorityElement()
case .numberSmallByFreq:
    ArrayMain().numberSmallByFreq()
case .fairCandySwap:
    ArrayMain().fairCandySwap()
case .monotonicArray:
    ArrayMain().monotonicArray()
case .maxProfit:
    ArrayMain().maxProfit()
case .arrayRank:
    ArrayMain().arrayRankTransformed()
case .mostVisited:
    ArrayMain().mostVisited()
case .containsDublicate:
    ArrayMain().containDublicate()
case .twoSum:
    ArrayMain().twoSum()
case .distanceBetweenBusStop:
    ArrayMain().distanceBetweenBusStop()
case .findShortestSubArray:
    ArrayMain().findShortestSubArray()
case .pascalTriangle:
    ArrayMain().pascalTriangle()
case .findKthPositive:
    ArrayMain().findKthPositive()
case .ticTacToe:
    ArrayMain().ticTacToeWinner()
case .missingNo:
    ArrayMain().missinNumber()
case .imageSmoother:
    ArrayMain().imageSmoother()
case .pascalRow:
    ArrayMain().pascalRow()
case .maxWealth:
    ArrayMain().maximumWealth()
case .minCostClimbingStairs:
    ArrayMain().minCostClimbingStairs()
case .largeGroupPositions:
    ArrayMain().largeGroupPosition()
case .canThreePartEqualSum:
    ArrayMain().canThreeParrtsEqualSum()
case .isOneBitCharacter:
    ArrayMain().isOneBitCharacter()
case .divideBy5:
    ArrayMain().prefixesDivBy5()
case .maxSubArray:
    ArrayMain().maxSubArray()
//MARK:- String Problems Functions
//MARK: Easy
case .balancedString:
    StringMain().balanceString()
}

func executeMountainArray(){
    
    let arr = [0,3,2,1]
    let arr2 = [0,2,3,4,5,2,1,0]
    let arr3 = [2,1]
    let arr4 = [3,5,5]
    let arr5 = [1,3,2]
    let arr6 = [3,6,5,6,7,6,5,3,0]
    let arr7 = [0,1,2,4,2,1]
    let arr8 = [0,3,2,1]
    let arr9 = [9,8,7,6,5,4,3,2,1,0]
    let arr10 = [2,0,2]
    let start = DispatchTime.now() // <<<<<<<<<< Start time
    ValidMountainArray().checkIsMountainArray(arr10)
    let end = DispatchTime.now()   // <<<<<<<<<<   end time
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
    let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
    print("Time to evaluate problem executeMountainArray: \(timeInterval) seconds")
}


func replaceGreatestElement(){
    let arr = [17,18,5,4,6,1]
    let output = ReplaceGreatestElement().bestSolution(arr)
    print(output)
}

func removeDublicateItems(){
    var arr = [0,0,1,1,1,2,2,3,3,4]
    var arr2 = [1,1]
    var arr3 = [1,1,1]
    let output = RemoveDublicateItems().perfromRemoveDublicateOperation(&arr3)
    print(output)
}

func moveZeros(){
    var arr = [0,0,1]
    var arr2 = [0,1,0,3,12]
    print(MoveZeros().performMoveZeros(&arr2))
}

func sortArrayByParity(){
    var arr = [3,1,2,4]
    print(SortArrayByParity().sort(arr))
}

func squareOfSortedArray() {
    let arr = [-4,-1,0,3,10]
    let arr2 = [-7,-3,2,3,11]
    print(SquareOfSortedArray().sortArray(arr2))
}

func heightCheckerAlgo(){
    var arr = [1,1,4,2,1,3]
    var arr2 = [5,1,2,3,4]
    var arr3 = [1,2,3,4,5]
    var arr4 = [2,1,2,1,1,2,2,1]
    HeightChecker().performAnotherAlgo(arr4)
}

func findThirdMaxAlgo(){
    let arr = [3, 2, 1]
    let arr2 = [2, 2, 3, 1]
    let arr3 = [1, 2]
    let arr4 = [1,1,2]
    let arr5 = [1,2,-2147483648]
    let arr6 = [1,-2147483648,2]
    print(ThirdMax().findThirdMax(arr6))
}

func findDisappearedNumbers(){
    let arr = [4,3,2,7,8,2,3,1]
    DisappearedNumber().findDisappearedNo(arr)
}

func addTwoNumber(){
    let addNo = AddTwoNumberLL()
    addNo.addTwoNumber()
}


func findLongestSubstring(){
    let str = "abcabcbb"
    let str2 = "bbbbb"
    let str3 = "pwwkew"
    let str4 = "mayur"
    
    //LongestSubstring().findLongestSubstring(str: str4)
    //LongestSubstring().findLongestSubstring(str: str)
    LongestSubstring().findLengthOptimalSol(str: str3)
    LongestSubstring().leetCodeSolution(s: str2)
}

func findLongestPalindromSubstring(){
    let str = "babad"
    let str2 = "cbbd"
    let str3 = "a"
    let str4 = "ac"
    LongestPallindromicSubstring().longestPalindrom(str)
}

func findGreatestNumberOfCandies(){
    
    let arr1 = [2,3,5,1,3]
    let candies1 = 3
    
    let greatestNoOfCandies = GreatestNumberOfCandies()
    greatestNoOfCandies.checkIfKidHaveGreatesNoOfCandies(arr1, candies1)
}

func shuffleArray(){
    let arr = [2,5,1,3,4,7]
    let n = 3
    ShuffleArray().shuffle(arr, n)
}

func defangIPAddress(){
    var ip = "1.1.1.1"
    DefangingIPAddress().defangIPaddr(ip)
}

func numberOfJewelsInStone(){
    let J = "aA"
    let S = "aAAbbbb"
    JewelsAndStones().numJewelsInStones(J, S)
}

func maxDepthofParantheses(){
    let s = "(1+(2*3)+((8)/4))+1"
    let s2 = "(1)+((2))+(((3)))"
    let s3 = "1+(2*3)/(2-1)"
    let s4 = "1"
    MaximumNestingDepthOfParentheses().maxDepth(s4)
}

func numberOfStepsToReduceToZero(){
    let n = 123
    StepsToReduceNumberToZero().numberOfSteps(n)
}

func shuffleString(){
    let s = "codeleet"
    let indices = [4,5,6,7,0,2,1,3]
    
    ShuffleString().restoreString(s, indices)
}
