//
//  CircularProgressView.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 16/04/1445 AH.
//

import SwiftUI
struct AnimatedCircleChart: View {
    var arcsArray : [ArcModel]
    let title: String
    let total: Double
    let rotationDegree : Double
    
    private var startArray: [Double] = []
    @State private var endArray: [Double]
    @State private var statingNumber : Int = 0
    
    init(arcsArray: [ArcModel], title: String, total: Double, rotationDegree : Double = 0) {
        self.arcsArray = arcsArray
        self._endArray = State(initialValue: Array(repeating: 0.0, count: arcsArray.count))
        self.title = title
        self.total = total
        self.rotationDegree = rotationDegree
        
        // Calculating startArray
        // first arc will start from zero
        self.startArray.append(0)
        // Other arcs
        for index in 1..<arcsArray.count{
            let tempStart = startArray[index - 1] + arcsArray[index - 1].percentage
            startArray.append(tempStart)
        }
    }
    
    
    var body: some View {
        ZStack {
            Group{
                ForEach(0..<arcsArray.count) { index in
                    CircleArc(
                        color: arcsArray[index].color,
                        startFrom: startArray[index],
                        endTo: endArray[index],
                        lineWidth: arcsArray[index].lineWidth,
                        shadowRadius: arcsArray[index].shadowRadius,
                        blurRadius: arcsArray[index].blurRadius
                    )
                    .onAppear{
                        print(arcsArray[index].percentage)
                    }
                }
            }
            .rotationEffect(.degrees(rotationDegree))
            
            VStack{
                
                Text(title)
                    .font(.subheadline)
                
                Text("$\(statingNumber)")
                    .font(.largeTitle)
                
            }
            .foregroundStyle(AppColors.whiteText)
            .bold()
            
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true){ timer in
                self.statingNumber += 1
                if(statingNumber == Int(total)){
                    timer.invalidate()
                }
            }
            
            DispatchQueue.main.async {
                withAnimation(Animation.linear(duration: 2)) {
                    endArray = arcsArray.indices.map{ i in
                        startArray[i] + arcsArray[i].percentage
                    }
                }
            }
            
            
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
