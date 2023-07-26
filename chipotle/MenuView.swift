//
//  MenuView.swift
//  chipotle
//
//  Created by David Daly on 7/26/23.
//

import SwiftUI

struct AnimatedMenuBar: View {
    @Binding var currentIndex: Int
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                ForEach(0..<3) { index in
                    Text("Tab \(index + 1)")
                        .frame(width: geometry.size.width / 3)
                        .foregroundColor(.white)
                        .background(index == currentIndex ? Color.green : Color.blue)
                        .onTapGesture {
                            withAnimation {
                                currentIndex = index
                            }
                        }
                }
                .animation(.easeIn)
            }
        }
    }
}

struct AnimatedMenuBar_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedMenuBar(currentIndex: .constant(1))
    }
}
