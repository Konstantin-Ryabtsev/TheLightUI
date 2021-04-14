//
//  ContentView.swift
//  The LightUI
//
//  Created by Konstantin on 14.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State var colorSwitch = 0
    @StateObject var torchState = TorchState()
    
    var body: some View {
        ZStack {
            switch colorSwitch {
            case 0:
                Color.red
            case 1:
                Color.yellow
            case 2:
                Color.green
            default:
                Color.black
            }
            
            HStack() {
                Toggle(isOn: $torchState.isOn) {
                    Text("Torch")
                }
            }
            
            
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            colorSwitch = colorSwitch + 1 > 2 ? 0 : colorSwitch + 1
        }
        .statusBar(hidden: true)
        
        
        //Toggle(isOn: $torchState.isOn) {
        //    Text("Torch")
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
