//
//  Array+Utils.swift
//  WeScan
//
//  Created by Thomson Reuters on 13/11/19.
//  Copyright © 2019 Thomson Reuters. All rights reserved.
//

import Vision
import Foundation

extension Array where Element == Quadrilateral {
    
    /// Finds the biggest rectangle within an array of `Quadrilateral` objects.
    func biggest() -> Quadrilateral? {
        let biggestRectangle = self.max(by: { (rect1, rect2) -> Bool in
            return rect1.perimeter < rect2.perimeter
        })
        
        return biggestRectangle
    }
    
}
