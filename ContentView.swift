//
//  ContentView.swift
//  MusicPlayerDemo
//
//  Created by Suryansh Mansharamani on 5/16/20.
//  Copyright © 2020 Suryansh Mansharamani. All rights reserved.
//

import SwiftUI
import AVKit
 
struct ContentView: View {
    @State var audioPlayer: AVAudioPlayer!

    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Rain").font(.system(size: 45)).fontWeight(.bold).navigationBarHidden(true)
                        .foregroundColor(.buttonColor).background(Image("Image").resizable()
                            .frame(width: 900, height: 900)
                        .aspectRatio(contentMode: .fit)
)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                    
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                    }
                    Spacer()
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                   
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                        
                    }
                 
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "rain-03", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
           
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
