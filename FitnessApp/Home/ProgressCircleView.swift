//
//  ProgressCircleView.swift
//  FitnessApp
//
//  Created by Md Alishan Ali on 09/11/24.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    
    private let width: CGFloat = 20;
    
    
    var body: some View {
        ZStack{
            Circle().stroke(color.opacity(0.3), lineWidth: width)
            
            Circle().trim(from: 0,
                          to: CGFloat(progress)/CGFloat(goal)).stroke(color,style: StrokeStyle(lineWidth: width, lineCap: .round)).rotationEffect(.degrees(-90)).shadow(radius: 5)
        }    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), goal: 200, color: .blue)
}