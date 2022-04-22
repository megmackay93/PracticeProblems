//
//  TempTracker.swift
//  TempTracker
//
//  Created by Megan Mackay on 4/22/22.
//

import Foundation

class TempTracker {
    
    // All getters in O(1) time
    
    private var maxTemp: Int?
    private var minTemp: Int?
    private var meanTemp: Double?
    private var modeTemp: Int?
    private var tempCount: Int = 0
    private var tempSum: Double = 0.0
    private var tempCounts: [Int] = Array(repeating: 0, count: 111)
    private var highestCount: Int = 0
    
    func insert(newTemp: Int) {
        // Record new temp
        
        // Max
        if let maxTemp = maxTemp {
            self.maxTemp = max(maxTemp, newTemp)
        } else {
            maxTemp = newTemp
        }
        // Min
        if let minTemp = minTemp {
            self.minTemp = min(minTemp, newTemp)
        } else {
            minTemp = newTemp
        }
        // Mean
        tempCount += 1
        tempSum += Double(newTemp)
        meanTemp = tempSum / Double(tempCount)
        
        // Mode
        tempCounts[newTemp] += 1
        if tempCounts[newTemp] > highestCount {
            modeTemp = newTemp
            highestCount = tempCounts[newTemp]
        }
    }
    
    func getMax() -> Int? {
        // Return highest temp
        return maxTemp
    }
    
    func getMin() -> Int? {
        // Return lowest temp
        return minTemp
    }
    
    func getMean() -> Double? {
        // Return mean of all temps
        return meanTemp
    }
    
    func getMode() -> Int? {
        // Return mode of all temps. If multiple, return any
        return modeTemp
    }
}
