//
//  CircleModule.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 16/04/1445 AH.
//

import SwiftUI

//enum ArcModelError: Error {
//    case invalidPercentage(Double)
//}

struct ArcModel: Identifiable {
    let id = UUID()
    let color: Color
    let percentage: Double
    let lineWidth: Double
    let shadowRadius: Double
    let blurRadius: Double
    
    
//    init(color: Color, percentage: Double, lineWidth: Double, shadowRadius: Double, blurRadius: Double) throws {
//        self.color = color
//        if (percentage < 0 || percentage > 1){
//            throw ArcModelError.invalidPercentage(percentage)
//        }
//        self.percentage = percentage
//        self.lineWidth = lineWidth
//        self.shadowRadius = shadowRadius
//        self.blurRadius = blurRadius
//    }
}
