//
//  ContentView.swift
//  About Angela
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var introText = "Hi! My name is Angela and I'm a KWK scholar with you all :). I'm 17 and going to GMU next year, and Gtech after!"
    
    var body: some View {
       
        ZStack {
            Color(UIColor(red: 0.37, green: 0.71, blue: 0.80, alpha: 1.00))
                .ignoresSafeArea()
                .cornerRadius(10.0)
            
            VStack {
                Text("Angela Sidhu")
                    .font(.custom("Roboto-Black", size: 46))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.10588235294117647, green: 0.28627450980392155, blue: 0.396078431372549))
                HStack(alignment: .top, spacing: 10.0) {
                    Image("lake2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0)
                        .padding()
                    Text(introText)
                        .multilineTextAlignment(.center)
                        .padding([.top, .bottom, .trailing])
                        .foregroundStyle(Color(red: 0.10588235294117647, green: 0.28627450980392155, blue: 0.396078431372549))
                }//hstack1
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(10.0)
                .shadow(color:Color(hue: 0.547, saturation: 0.557, brightness: 0.955), radius: 10.0)                .padding()
                HStack(alignment: .top, spacing: 10.0) {
                   
                    Text("This is where my crew team rowed on. Besides rowing, I love all things water, sewing, baking music, and napping!")
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading])
                        .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(red: 0.10588235294117647, green: 0.28627450980392155, blue: 0.396078431372549))
                    Image("crew")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 200.0)
                        .padding([.top, .bottom, .trailing])

                } //hstack2
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(10.0)
                .shadow(color:Color(hue: 0.547, saturation: 0.557, brightness: 0.955), radius: 10.0)
                .padding()
                Button("Click me for a fun fact!") {
 introText = "Fun fact: This picture was taken in Olympic National Park, Washington at Lake Crescent. I got to kayak here! "
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 0.10588235294117647, green: 0.28627450980392155, blue: 0.396078431372549))
                    .padding()
                    .foregroundStyle(Color(red: 0.79, green: 0.91, blue: 1.00))
            } //vstack
            
        }//zstack
        .padding()
        
    }//view
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
