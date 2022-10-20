//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Noah Alexandre Soubliere on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press Return To Continue...")
    //Waits for input from the user then discards it
    _ = readLine()
}

//Create an empty list (array)
var dataSet: [Int] = []

//Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}


//Print the list
print("Unsorted")
print(dataSet)
waitForUserInput()

//loop through the arrray "n" times
//(how many elements are in the array)
for i in 0..<dataSet.count {
    
    //One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        
        
        //compare left value to right value
        print ("comparison \(j + 1)...", terminator: "")
        if dataSet[j] > dataSet[j+1] {
            //swap values when left value is more then right value
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1] // replace left with rigth
            dataSet[j + 1] = temporaryValue //replace the right with temporary value
            print(" values were swapped,", terminator: "")
        }
        print("")

    }

    //print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
}
    
    
