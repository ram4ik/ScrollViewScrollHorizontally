//
//  ContentView.swift
//  ScrollViewScrollHorizontally
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var items = [
        Color.green,
        Color.blue,
        Color.purple,
        Color.pink,
        Color.yellow,
        Color.orange
    ]
    
    var body: some View {
        GeometryReader { gr in
            VStack(spacing: 20) {
                Text("ScrollView")
                    .font(.largeTitle)
                Text("Scroll Horizontaly")
                    .font(.title)
                    .foregroundColor(.gray)
                Text("Just set the ScrollView'a axis to horizontal and if the contents go horizontally beyond the frame, scrolling will be enabled.")
                
                ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(self.items, id: \.self) { item in
                            RoundedRectangle(cornerRadius: 15)
                            .fill(item)
                                .frame(width: gr.size.width - 60, height: 200)
                            
                        }
                    }
                }.padding(.horizontal)
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
