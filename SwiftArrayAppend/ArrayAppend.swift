//
//  ArrayAppend.swift
//  SwiftArrayAppend
//
//  Created by Gordon Johnston on 25/06/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import Foundation


typealias MazeIdentifier = Int
struct MazePoint {
    let x: Int
    let y: Int
}

class MazePointObject: NSObject {
    let x: Int
    let y: Int
    
    init(point:MazePoint) {
        self.x = point.x
        self.y = point.y
    }
    
    func point() -> MazePoint {
        return MazePoint(x: x, y: y)
    }
}

struct Kruskal {
    
    var tileMapping: [MazeIdentifier: [MazePoint]] = [:]
    var tileMappingWithNSArray: [MazeIdentifier: NSMutableArray] = [:]
    var tileMappingArray: [[MazePoint]] = []

    mutating func dictionaryArrayAppend() {
    
        // First set an empty array
        tileMapping[0] = []
        
        // Now append to it 50,000 times
        
        for _ in 0..<50_000 {
            tileMapping[0]!.append(MazePoint(x:1, y:1))
        }
        
    }
    
    mutating func dictionaryNSMutableArrayAppend() {
        
        // First set an empty array
        tileMappingWithNSArray[0] = []
        
        // Now append to it 50,000 times
        
        for _ in 0..<50_000 {
            tileMappingWithNSArray[0]?.addObject(MazePointObject(point: MazePoint(x:1, y:1)))
        }
        
    }
    
    mutating func arrayArrayAppend() {
        
        // First set an empty array
        tileMappingArray.append([])
        
        // Now append to it 50,000 times
        
        for _ in 0..<50_000 {
            tileMappingArray[0].append(MazePoint(x:1, y:1))
        }
        
    }

    
}


