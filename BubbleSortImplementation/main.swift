//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Noah Alexandre Soubliere on 2022-10-20.
//

import Foundation

print("Hello, World!")

//Create an empty list (array)
var dataSet: [Int] = []

//Populate the list
dataSet.append(Int.random(in: 1...100))
dataSet.append(Int.random(in: 1...100))
dataSet.append(Int.random(in: 1...100))


//Print the list
print(dump(dataSet))
