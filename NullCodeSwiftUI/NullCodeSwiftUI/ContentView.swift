//
//  ContentView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection = 0
    
    var body: some View {
        VStack {
            NavView()
            Spacer()
            ZStack{
                switch tabSelection {
                case 0:
                    Text("Page 1")
                case 1:
                    Text("Page 2")
                case 2:
                    Text("Page 3")
                case 3:
                    Text("Page 4")
                case 4:
                    Text("Page 5")
                default:
                    Text("Page Default")
                }
            }
            Spacer()
            TabView(index: $tabSelection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NavView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Navigation View")
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30,height: 30)
            }
        }
        .padding()
    }
}
