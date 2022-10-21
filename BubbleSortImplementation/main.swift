//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Noah Alexandre Soubliere on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press Return To Organize The Numbers")
//    //Waits for input from the user then discards it
//    _ = readLine()
}

//Create an empty list (array)
var dataSet: [Int] = []

//Populate the list
dataSet.append(20)
dataSet.append(19)
dataSet.append(18)
dataSet.append(17)
dataSet.append(16)
dataSet.append(15)
dataSet.append(14)
dataSet.append(13)
dataSet.append(12)
dataSet.append(11)
dataSet.append(10)
//for _ in 1...10 {
//    dataSet.append(Int.random(in: 1...10000))
//}


//Print the list
print("Unsorted")
print(dataSet)
waitForUserInput()

//Keep track of the start time (epoch)
//when this tline of code runs, startTime contains the amount of seconds from jan 1st 1970
let startTime = Date().timeIntervalSince1970
print("Starting sort...", terminator: "")


//loop through the arrray "n" times
//(how many elements are in the array)
for i in 0..<dataSet.count {
    
    //Keep track of wether a pair of numbers was swapped
    var swapped = false
    //One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        
        
        //compare left value to right value
        print ("comparison \(j + 1)...", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            //swap values when left value is more then right value
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1] // replace left with rigth
            dataSet[j + 1] = temporaryValue //replace the right with temporary value
            print(" values were swapped,", terminator: "")
            
                //Note that a swap occured
            swapped = true
        }
        print("")

    }
    
    //print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    //waitForUserInput()
    
    print("")
    
    //When no swaps occured, stop the outer loop
    if swapped == false {
        break
    }
}
    
   //get end time
let endTime = Date().timeIntervalSince1970

//get the elapsed time
let elapsedTime = endTime - startTime
print("Sort took \(elapsedTime) secounds.")

