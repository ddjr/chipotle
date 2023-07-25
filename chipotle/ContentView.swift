//
//  ContentView.swift
//  chipotle
//
//  Created by David Daly on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Image("mainBackground")
                        .resizable()
                }
                ZStack {
                    ZStack {
                        Circle()
                            .frame(width: 80)
                            .foregroundColor(.red)
                        Text(" 5-10 \n Mins")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                    }
                    .rotationEffect(Angle(degrees: -25))
                    .offset(x: -130, y: -100)
                    .zIndex(10)
                    VStack {
                        Text("Meals For One")
                            .foregroundColor(.brown)
                            .bold()
                            .font(.title)
                        Text("Steak Bowl, steak Bowl with Tortilla on the Side, Torilla on the side")
                            .lineLimit(2)
                        Text("ADD TO BAG")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 12)
                            .background(.brown)
                            .foregroundColor(.white)
                            .bold()
                            .underline()
                            .cornerRadius(30.0)
                        Text("VIEW ALL MY ORDERS")
                            .foregroundColor(.brown)
                            .underline()
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .background(.white)
                    .cornerRadius(10.0)
                }
            }
            
        }
        .background( Color(uiColor: .systemGray4))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
