//
//  ArrayMain.swift
//  Leetcode
//
//  Created by ds-mayur on 17/10/2020.

import Foundation

struct ArrayMain {
    
    func cummulativeSumOfArray(){
        let num = [1,2,3,4]
        SumOf1DArray().runningSum(num)
    }
    
    func decompressEncodedList(){
        let arr = [1,2,3,4]
        let arr2 = [1,1,2,3]
        DecompressEncodedList().decompressRLElist(arr)
    }
    
    func targetArray(){
        let num = [0,1,2,3,4]
        let index = [0,1,2,2,1]
        
        let num2 = [1,2,3,4,0]
        let index2 = [0,1,2,3,0]
        
        CreateTargetArray().createTargetArray(num2, index2)
    }
    
    func xorArray(){
        let n = 5
        let s = 0
        
        let n2 = 4
        let s2 = 3
        XORArray().xorOperation(n2, s2)
    }
    
    func sumOfOddLengthSubArray(){
        let arr = [1,4,2,5,3]
        let arr2 = [1, 2]
        let arr3 = [10, 11, 12]
        
        SumOfOddLengthSubArray().sumOddLengthSubarrays(arr3)
    }
    
    func minTimeVisitingAllPoints(){
        
        let arr = [[1,1],[3,4],[-1,7]]
        let arr2 = [[3,2],[-2,2]]
        let arr3 = [[559,511],[932,618],[-623,-443],[431,91],[838,-127],[773,-917],[-500,-910],[830,-417],[-870,73],[-864,-600],[450,535],[-479,-370],[856,573],[-549,369],[529,-462],[-839,-856],[-515,-447],[652,197],[-83,345],[-69,423],[310,-737],[78,-201],[443,958],[-311,988],[-477,30],[-376,-153],[-272,451],[322,-125],[-114,-214],[495,33],[371,-533],[-393,-224],[-405,-633],[-693,297],[504,210],[-427,-231],[315,27],[991,322],[811,-746],[252,373],[-737,-867],[-137,130],[507,380],[100,-638],[-296,700],[341,671],[-944,982],[937,-440],[40,-929],[-334,60],[-722,-92],[-35,-852],[25,-495],[185,671],[149,-452]]
        let arr4 = [[431,91],[838,-127]]
        MinimumTimeVisitingAllPoints().minTimeToVisitAllPoints2(arr4)
    }
    
    func diagonalSum(){
        let mat = [[1,2,3],
                   [4,5,6],
                   [7,8,9]]
        let mat2 = [[1,1,1,1],
                    [1,1,1,1],
                    [1,1,1,1],
                    [1,1,1,1]]
        let mat3 = [[5]]
        
        DiagonalSum().diagonalSum(mat3)
    }
    
    func findNumberOfStudentDoingHW(){
        let startTime = [1,2,3]
        let endTime = [3,2,7]
        let queryTime = 4
        
        let startTime2 = [4]
        let endTime2 = [4]
        let queryTime2 = 4
        
        let startTime3 = [9,8,7,6,5,4,3,2,1]
        let endTime3 = [10,10,10,10,10,10,10,10,10]
        let queryTime3 = 5
        
        NumberOfStudentDoingHomework().busyStudent(startTime3, endTime3, queryTime3)
    }
    
    func findMaxProdofTwoElement(){
        let arr = [3,4,5,2]
        let arr2 = [1,5,4,5]
        let arr3 = [3, 7]
        MaxProdOfTwoElement().maxProduct(arr3)
    }
    
    func flipImageMatrix(){
        let arr = [[1,1,0],[1,0,1],[0,0,0]]
        FlipImageMatrix().flipAndInvertImage(arr)
    }
    
    func integerSumUptoZero(){
        let n = 5
        IntegerSumUpToZero().sumZero(n)
    }
    
    func countNegativeNumber(){
        let grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
        CountNegativeNumberInArray().countNegatives(grid)
    }
    
    func discountInShop(){
        let prices = [8,4,6,2,3]
        let prices2 = [1,2,3,4,5]
        let prices3 = [10,1,1,6]
        DiscountPrices().finalPrices(prices3)
    }
    
    func cabArrayBeEqual(){
        let target = [1,2,3,4], arr = [2,4,1,3]
        let target1 = [3,7,9], arr1 = [3,7,11]
        let target2 = [1,2,2,3], arr2 = [1,1,2,3]
        ArrayEqualByReversingSubArray().canBeEqual(target2, arr2)
    }
    
    func arrayPairSum(){
        let n = [1,4,3,2]
        ArrayPairSum().arrayPairSum(n)
    }
    
    func canMakeArithmaticProgression(){
        let arr = [3,5,1]
        print(CanMakeArithmaticProgression().canMakeArithmeticProgression(arr))
    }
    
    func luckyNumber(){
        let matrix = [
            [3,7,8],
            [9,11,13],
            [15,16,17]
        ]
        
        let matrix2 = [
            [1,10,4,2],
            [9,3,8,7],
            [15,16,17,12]
        ]
        
        let matrix3 = [
            [7,8],
            [1,2]
        ]
        
        let matrix4 = [[56216],
                       [63251],
                       [75772],
                       [1945],
                       [27014]]
        
        let matrix5 = [
            [36376,85652,21002,4510],
            [68246,64237,42962,9974],
            [32768,97721,47338,5841],
            [55103,18179,79062,46542]
        ]
        LuckyNumberInArray().luckyNumbers(matrix5)
    }
    
    func sortArrayByParity(){
        let arr = [4,2,5,7]
        SortArrayByParityII().sortArrayByParityII(arr)
    }
    
    func kWeakestRow(){
        let arr = [[1,1,0,0,0],
                   [1,1,1,1,0],
                   [1,0,0,0,0],
                   [1,1,0,0,0],
                   [1,1,1,1,1]]
        let k = 3
        
        let arr2 = [[1,1,1,1,1,1],
                    [1,1,1,1,1,1],
                    [1,1,1,1,1,1]]
        let k2 = 1
        KWeakestRow().kWeakestRows(arr, k)
    }
    
    func findAverageSalary(){
        let arr = [4000,3000,1000,2000]
        let arr2 = [48000,59000,99000,13000,78000,45000,31000,17000,39000,37000,93000,77000,33000,28000,4000,54000,67000,6000,1000,11000]
        AverageSalary().average(arr2)
    }
    
    func findCommonCharacter(){
        let arr = ["bella","label","roller"]
        let arr2 = ["cool","lock","cook"]
        CommonCharacter().commonChars(arr2)
    }
    
    func relativeSortArray(){
        let arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
        let arr11 = [28,6,22,8,44,17], arr22 = [22,28,8,6]
        let arr111 = [2,21,43,38,0,42,33,7,24,13,12,27,12,24,5,23,29,48,30,31], arr222 = [2,42,38,0,43,21]
        RelativeSortArray().relativeSortArray(arr1, arr2)
    }
    
    func countCharacters(){
        let words = ["cat","bt","hat","tree"], chars = "atach"
        let words2 = ["hello","world","leetcode"], chars2 = "welldonehoneyr"
        let words3 = ["skwgxuuuumkfurejmqrbipvlavdrozjyxhagbwetabjwevfsegqfpllgafm",
                      "ufvpzzgpswnk",
                      "tcouxmlrnfyoxvkeglchhryykmdvgvdxpookbtiyhuthoqsnqbowewpfgbcy",
                      "qwpttmxzazkkfqqtrnkaejifligdvgnyvtmppjbkeuqryxzqyegttvhzolpztvigxygzvsppurijaekb",
                      "vbtvbheurzbglzljczmziitkbmtoybiwhoyfrsxvfveaxchebjdzdnnispzwbrgrbcdaistps"]
        let chars3 = "avyteswqppomeojxoybotzriuvxolmllevluauwb"
        CountCharacters().countCharacters(words3, chars3)
    }
    
    func fibbonacci(){
        let n = 8
        Fibbonacci().fib(n)
    }
    
    func minAbsDifference(){
        let arr = [4,2,1,3]
        let arr2 = [1,3,6,10,15]
        let arr3 = [3,8,-10,23,19,-4,-14,27]
        let arr4 = [40,11,26,27,-20]
        MinAbsDifference().minimumAbsDifference(arr4)
    }
    
    func findTheDistanceValue(){
        let arr1 = [4,5,8], arr2 = [10,9,1,8], d = 2
        let arr11 = [1,4,2,3], arr22 = [-4,-3,6,10,20,30], d2 = 3
        let arr111 = [2,1,100,3], arr222 = [-5,-2,10,-3,7], d3 = 6
        FindTheDistanceValue().findTheDistanceValue(arr111, arr222, d3)
    }
    
    func trimMean(){
        let arr = [1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3]
        TrimMean().trimMean(arr)
    }
    
    func isToeplitzMatrix(){
        let matrix = [
            [1,2,3,4],
            [5,1,2,3],
            [9,5,1,2]
        ]
        let matrix2 = [
            [1,2],
            [2,2]
        ]
        
        let matrix3 = [[18],[66]]
        let matrix4 = [[39,24]]
        let matrix5 =  [[0,33,98],[34,22,33]]
        ToeplitzMatrix().isToeplitzMatrix(matrix5)
    }
    
    func countLargestGroup(){
        let n = 24
        CountLargestGroup().countLargestGroup(n)
    }
    
    func minStartValue() {
        let nums = [-3,2,-3,4,2]
        let nums2 = [1,2]
        let nums3 = [1,-2,-3]
        MinStartValue().minStartValue(nums3)
    }
    
    func numSpecial() {
        let mat = [[1,0,0],
                   [0,0,1],
                   [1,0,0]]
        let mat2 = [[1,0,0],
                    [0,1,0],
                    [0,0,1]]
        let mat3 = [[0,0,0,0,0,0,0,0],
                    [0,0,0,1,0,0,0,0],
                    [0,0,0,0,0,0,0,0],
                    [0,0,0,0,0,0,1,0],
                    [0,1,0,0,0,0,1,0],
                    [0,1,0,0,0,0,0,0]]
        let mat4 = [[0,0,0,1],
                    [1,0,0,0],
                    [0,1,1,0],
                    [0,0,0,0]]
        SpecialNumberInMatrix().numSpecial(mat3)
    }
    
    func frequencySort(){
        let nums = [1,1,2,2,2,3]
        let nums2 = [2,3,1,3,2]
        let num3 = [-1,1,-6,4,5,-6,1,4,1]
        let num4 = [-1,1,-6,4,5,-6,1,4,1]
        FrequencySort().frequencySort(num3)
    }
    
    func findLucky(){
        let arr = [2,2,3,4]
        let arr2 = [1,2,2,3,3,3]
        let arr3 = [2,2,2,3,3]
        let arr4 = [5]
        FindLucky().findLucky(arr4)
    }
    
    func weekDay(){
        let day = 31, month = 8, year = 2019
        DayOfTheWeek().dayOfTheWeek(day, month, year)
    }
    
    func specialArray(){
        let nums = [0,4,3,0,4]
        let nums2 = [3,6,7,7,0]
        let nums3 = [0,0]
        let nums4 = [0,4,3,0,4]
        let nums5 = [3,5]
        SpecialArray().specialArray(nums5)
    }
    
    func transposeMatrix(){
        let arr = [[1,2,3],[4,5,6],[7,8,9]]
        let arr2 = [[1,2,3],[4,5,6]]
        TransposeMatrix().transpose(arr)
    }
    
    func slowestChar(){
        let releaseTimes = [9,29,49,50], keysPressed = "cbcd"
        SlowestKey().slowestKey(releaseTimes, keysPressed)
    }
    
    func shiftGrid(){
        let grid = [[1,2,3],[4,5,6],[7,8,9]], k = 2
        Shift2DGrid().shiftGrid(grid, k)
    }
    
    func sumOfEvenAfterQueries(){
        let A = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
        SumOfEvenAfterQueries().sumEvenAfterQueries(A, queries)
    }
    
    func matrixReshaped(){
        let nums = [[1,2],
                   [3,4]]
        let r = 1, c = 4
        
        let nums2 = [[1,2,3,4]]
        let r2 = 2, c2 = 2
        MatrixReshaped().matrixReshape(nums, r, c)
    }
    
    func findSpecialInteger(){
        let arr = [1,2,2,6,6,6,6,7,10]
        FindSpecialInteger().findSpeicalIntegerSol(arr)
    }
    
    func majorityElement(){
        let arr = [3,2,3]
        MajorityElement().majorityElement(arr)
    }
    
    func numberSmallByFreq(){
        let queries = ["cbd"], words = ["zaaaz"]
        let queries2 = ["bbb","cc"], words2 = ["a","aa","aaa","aaaa"]
        NumSmallerByFrequency().numSmallerByFrequency(queries2, words2)
    }
    
    func fairCandySwap(){
        let A = [1,1], B = [2,2]
        let A2 = [1,2], B2 = [2,3]
        let A3 = [2], B3 = [1,3]
        let A4 = [1,2,5], B4 = [2,4]
        let A5 = [8,73,2,86,32], B5 = [56,5,67,100,31]
        FairCandySwap().fairCandySwap(A5, B5)
    }
    
    func monotonicArray(){
        let arr = [1,2,2,3]
        let arr2 = [1,3,2]
        let arr3 = [1,2,4,5]
        let arr4 = [6,5,4,4]
        let arr5 = [1,1,0]
        MonotonicArray().isMonotonic(arr5)
    }
    
    func maxProfit(){
        let arr = [7,1,5,3,6,4]
        let arr2 = [1,2,3,4,5]
        let arr3 = [7,6,4,3,1]
        MaxProfit().maxProfit2(arr3)
    }
    
    func arrayRankTransformed(){
        let arr = [40,10,20,30]
        let arr2 = [37,12,28,9,100,56,80,5,12]
        let arr3 = [100,100,100]
        ArrayRankTransformed().arrayRankTransform2(arr)
    }
    
    func mostVisited(){
        let n = 4, rounds = [1,3,1,2]
        let n2 = 2, rounds2 = [2,1,2,1,2,1,2,1,2]
        let n3 = 7, rounds3 = [1,3,5,7]
        let n4 = 3, rounds4 = [2,1,2,1,3,2,3,1,2,3,1,3,1,2,3,1,3,2,3,2,1,2,3,1,3]
        MostVisited().leetCodeSolution(n, rounds)
    }
    
    func containDublicate(){
        var num = [1,2,3,1]
        var num2 = [1,2,3,4]
        var num3 = [1,1,1,3,3,4,3,2,4,2]
        ContainDublicate().containsDuplicate(num3)
    }
    
    func twoSum(){
        let numbers = [2,7,11,15], target = 9
        TwoSum().twoSum(numbers, target)
    }
    
    func distanceBetweenBusStop(){
        let distance = [1,2,3,4], start = 0, destination = 3
        let distance2 = [3,6,7,2,9,10,7,16,11], start2 = 6, destination2 = 2
        DistanceBetweenBusStops().distanceBetweenBusStops(distance2, start2, destination2)
    }
    
    func findShortestSubArray(){
        let nums = [1,2,2,3,1]
        let nums2 = [1,2,2,3,1,4,2]
        FindShortestSubArray().findShortestSubArray(nums2)
    }
    
    func pascalTriangle(){
        let num = 5
        PascalTriangle().generate(num)
    }
    
    func findKthPositive(){
        let arr = [2,3,4,7,11], k = 5
        let arr2 = [1,2,3,4], k2 = 2
        FindKthPoitive().findKthPositive(arr2, k2)
    }
    
    func ticTacToeWinner(){
        let moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
        TicTacToe().tictactoe(moves)
    }
    
    func missinNumber(){
        let nums = [3,0,1]
        MisisngNumber().missingNumber(nums)
    }
    
    func imageSmoother(){
        let nums = [[1,1,1],
                    [1,0,1],
                    [1,1,1]]
        let nums2 = [[2,3,4],
                     [5,6,7],
                     [8,9,10],
                     [11,12,13],
                     [14,15,16]]
        ImageSmoother().imageSmoother(nums)
    }
    
    func pascalRow(){
        let n = 3
        PascalTriangleRow().getRow(n)
    }
    
    func maximumWealth(){
        let num = [[1,2,3],[3,2,1]]
        MaximumWealth().maximumWealth(num)
    }
    
    func largeGroupPosition(){
        let s = "abbxxxxzzy"
        let s2 = "abcdddeeeeaabbbcd" // [[3,5],[6,9],[12,14]]
        let s3 = "abc"
        let s4 = "aaa"
        LargeGroupPositions().largeGroupPositions(s)
    }
    
    func minCostClimbingStairs(){
        let cost = [10, 15, 20]
        let cost2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
        MinCostClimbingStairs().minCostClimbingStairs(cost2)
    }
    
    func canThreeParrtsEqualSum(){
        let A = [0,2,1,-6,6,-7,9,1,2,0,1]
        let A2 = [0,2,1,-6,6,7,9,-1,2,0,1]
        let A3 = [6,1,1,13,-1,0,-10,20]
        let A4 = [10,-10,10,-10,10,-10,10,-10]
        let A5 = [1,-1,1,-1]
        CanThreePartsEqualSum().canThreePartsEqualSum(A5)
    }
}
