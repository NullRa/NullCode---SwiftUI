//
//  ContentView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection = 0
    @State var showingSettingView = false
    @State var showTab3: Bool = false
    @State var showTab4: Bool = false
    @State var showTab5: Bool = false
    
    var body: some View {
        VStack {
            NavView(showingSettingView: $showingSettingView)
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
            TabView(index: $tabSelection, showTab3: $showTab3, showTab4: $showTab4, showTab5: $showTab5)
        }
        .fullScreenCover(isPresented: $showingSettingView) {
            showingSettingView = false
        } content: {
            SettingView(tabSelection: $tabSelection, showTab3: $showTab3, showTab4: $showTab4, showTab5: $showTab5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
