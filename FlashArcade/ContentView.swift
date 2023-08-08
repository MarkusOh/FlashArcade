//
//  ContentView.swift
//  FlashArcade
//
//  Created by Seungsub Oh on 2023/08/08.
//

import SwiftUI
import FLArcade_BallBounce

struct ContentView: View {
    let mainGame = MainGame()
    
    var body: some View {
        VStack {
            GeometryReader { proxy in
                mainGame.view(width: proxy.size.width, height: proxy.size.height)
            }
        }
        .padding()
        .onAppear {
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
