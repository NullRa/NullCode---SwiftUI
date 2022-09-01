//
//  TabView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct TabView: View {
    @Binding var index: Int
    @Binding var showTab3: Bool
    @Binding var showTab4: Bool
    @Binding var showTab5: Bool
    @Binding var navTitle: String
    var body: some View {
        HStack{
            Spacer()
            Button {
                index = 0
                navTitle = TabItemType.tab1.rawValue
            } label: {
                TabItemView(tabItemType: .tab1, selected: self.index == 0)
            }
            Spacer()
            Button {
                index = 1
                navTitle = TabItemType.tab2.rawValue
            } label: {
                TabItemView(tabItemType: .tab2, selected: self.index == 1)
            }
            if showTab3 {
                Spacer()
                Button {
                    index = 2
                    navTitle = TabItemType.tab3.rawValue
                } label: {
                    TabItemView(tabItemType: .tab3, selected: self.index == 2)
                }
            }
            if showTab4 {
                Spacer()
                Button {
                    index = 3
                    navTitle = TabItemType.tab4.rawValue
                } label: {
                    TabItemView(tabItemType: .tab4, selected: self.index == 3)
                }
            }
            if showTab5 {
                Spacer()
                Button {
                    index = 4
                    navTitle = TabItemType.tab5.rawValue
                } label: {
                    TabItemView(tabItemType: .tab5, selected: self.index == 4)
                }
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 188/255, green: 216/255, blue: 193/255))
        .animation(.spring(), value: index)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(index: .constant(0), showTab3: .constant(false), showTab4: .constant(false), showTab5: .constant(false), navTitle: .constant("Me"))
    }
}

enum TabItemType: String {
    case tab1 = "Me"
    case tab2 = "LeetCode"
    case tab3 = "Test"
    case tab4 = "Habit"
    case tab5 = "Others"
    
    var image: Image {
        switch self {
        case .tab1:
            return Image(systemName: "person")
        case .tab2:
            return Image(systemName: "pencil")
        case .tab3:
            return Image(systemName: "hourglass")
        case .tab4:
            return Image(systemName: "heart")
        case .tab5:
            return Image(systemName: "eyes")
        }
    }
    
    var text: Text {
        return Text(self.rawValue)
    }
}

struct TabItemView: View {
    let tabItemType: TabItemType
    var selected: Bool
    
    var body: some View {
        if selected {
            tabItemType.image
                .resizable()
                .frame(width: 25, height: 30)
                .foregroundColor(Color(red: 22/255, green: 80/255, blue: 142/255))
                .padding()
                .background(Color(red: 67/255, green: 154/255, blue: 134/255))
                .clipShape(Circle())
                .offset(y: -30)
        } else {
            VStack {
                tabItemType.image
                    .resizable()
                    .frame(width: 25, height: 30)
                    .foregroundColor(Color(red: 67/255, green: 154/255, blue: 134/255))
                tabItemType.text
                    .foregroundColor(Color(red: 22/255, green: 80/255, blue: 142/255))
            }
        }
    }
}
