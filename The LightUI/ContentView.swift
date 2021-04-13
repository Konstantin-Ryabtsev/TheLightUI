//
//  ContentView.swift
//  The LightUI
//
//  Created by Konstantin on 14.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isLightOn = true
    
    var body: some View {
        ZStack {
            isLightOn ? Color.white : Color.black
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            isLightOn.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
