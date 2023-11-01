//
//  ContentView.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 16/04/1445 AH.
//

import SwiftUI

struct CircleChartView: View {
    @ObservedObject var vm = CircleChartViewModel()
    var body: some View {
        MainBackground(showBackground: true){
            AnimatedCircleChart(
                arcsArray: vm.arcs,
                title: "June",
                total: 2430)
        }
    }
}

#Preview {
    MainBackground(showBackground: false){
        AnimatedCircleChart(
            arcsArray: ArcsData,
            title: "June",
            total: 2430)
    }
}
