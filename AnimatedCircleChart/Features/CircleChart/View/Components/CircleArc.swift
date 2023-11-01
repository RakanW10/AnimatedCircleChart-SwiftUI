//
//  subCircle.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 16/04/1445 AH.
//

import SwiftUI

struct CircleArc: View {
    let color: Color
    let startFrom: Double
    let endTo: Double
    let lineWidth: Double
    let shadowRadius: Double
    let blurRadius: Double
    
    var body: some View {
        Circle()
            .trim(from: startFrom, to: endTo)
            .stroke(
                color,
                lineWidth: lineWidth
            )
            .frame(width: 250)
            .shadow(color: color, radius: shadowRadius)
            .background(
                Circle()
                    .trim(from: startFrom, to: startFrom)
                    .stroke(
                        color,
                        lineWidth: lineWidth
                    )
                    .blur(radius: blurRadius)
                    .frame(width: 250)
                    .shadow(color: color, radius: shadowRadius)
            )
    }
}
