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


