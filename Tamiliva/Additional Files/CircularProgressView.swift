//
//  CircularProgressView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 16/3/22.
//

import SwiftUI

struct CircularProgressView: View {
   
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .opacity(0.3)
                .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                .animation(Animation.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0))

            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: .init(lineWidth: 26,
                                     lineCap: .round,
                                     lineJoin: .round
                                    ))
                .foregroundColor(Color(red: 0.45098039215686275, green: 0.6313725490196078, blue: 0.9803921568627451))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(Animation.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0))
        }
        .padding()
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: .constant(0.25))
    }
}
