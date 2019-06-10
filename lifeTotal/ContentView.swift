//
//  ContentView.swift
//  lifeTotal
//
//  Created by Braden Bowdish on 6/10/19.
//  Copyright © 2019 Braden Bowdish. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var lifeTotal = 40
    @State var topImageString = "tymna"
    @State var botImageString = "thrasios"
    
    var body: some View {
        VStack() {
            Image(topImageString)
                .resizable()
                .aspectRatio(CGSize(width: 850, height: 473),contentMode: .fill)
            Stepper(value: $lifeTotal, step: 1, onEditingChanged: { c in
                print(c)
            }) {
                Text("\(lifeTotal)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                    .foregroundColor(Color.black)
                }
                .background(Color.white)
                .aspectRatio(contentMode: .fit)
            //HStack {
            //    VStack {
            //        Text("Top Image:")
            //        TextField($topImageString)
            //    }
            //    .padding(.trailing)
            //    .aspectRatio(contentMode: .fit)
            //    VStack {
            //        Text("Bottom Image:")
            //        TextField($botImageString)
            //    }
            //    .aspectRatio(contentMode: .fit)
            //}
            Image(botImageString)
            .resizable()
            .aspectRatio(CGSize(width: 850, height: 473),contentMode: .fill)
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
