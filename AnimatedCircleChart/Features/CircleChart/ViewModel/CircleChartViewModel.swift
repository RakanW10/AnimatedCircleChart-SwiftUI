//
//  CircleChartViewModel.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 17/04/1445 AH.
//

import Foundation

class CircleChartViewModel: ObservableObject{
    @Published var arcs : [ArcModel]
    
    init() {
        arcs = ArcsData
    }
}


// Testing Data
let ArcsData : [ArcModel] = [
    .init(
        color: AppColors.yellow,
        percentage: 0.10,
        lineWidth: 4,
        shadowRadius: 2,
        blurRadius: 2),
    .init(
        color: AppColors.purple,
        percentage: 0.10,
        lineWidth: 8,
        shadowRadius: 8,
        blurRadius: 8),
    .init(
        color: AppColors.green,
        percentage: 0.20,
        lineWidth: 16,
        shadowRadius: 16,
        blurRadius: 16),
    .init(
        color: AppColors.skyBlue,
        percentage: 0.25,
        lineWidth: 32,
        shadowRadius: 32,
        blurRadius: 32),
    .init(
        color: AppColors.redPink,
        percentage: 0.30,
        lineWidth: 40,
        shadowRadius: 40,
        blurRadius: 40)
]
