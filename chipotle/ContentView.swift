//
//  ContentView.swift
//  chipotle
//
//  Created by David Daly on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var showMenuSheet = true
    @State private var selection = 2
    var body: some View {
        TabView(selection: $selection) {
            ZStack {
                Color.blue
            }
            .tag(1)
            ZStack {
                VStack {
                    Image("mainBackground")
                        .resizable()
                }
                VStack {
                    Spacer()
                    mealsBox
                    HStack {
                        Image(systemName: "qrcode")
                        Text("SCAN IN RESTAURANT")
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.top, 40)
                    .padding(.bottom, 100)
                }
            }
            .tag(2)
//            .sheet(isPresented: $showMenuSheet) {
//                Spacer()
//                HStack(alignment: .top) {
//                    Text("MENU")
//                    Spacer()
//                    Text("FEATURED")
//                    Spacer()
//                    Text("ORDERS")
//                    Spacer()
//                    Text("REWARDS")
//                }
//                .bold()
//                .padding(.vertical, 30)
//                .padding(.horizontal, 20)
//                .font(.body)
//                .presentationDetents([.height(50.0)])
//                .interactiveDismissDisabled()
//                .presentationDragIndicator(.hidden)
//                .presentationBackgroundInteraction(.enabled)
//            }
            ZStack {
                Color.red
            }
            .tag(3)
            .zIndex(10)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background( Color(uiColor: .systemGray4))

    }
    
    @ViewBuilder var mealsBox: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
