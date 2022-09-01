//
//  TabView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct TabView: View {
    @Binding var index: Int
    var body: some View {
        HStack{
            Button {
                index = 0
            } label: {
                TabItemView(tabItemType: .tab1, selected: self.index == 0)
            }
            Spacer()
            Button {
                index = 1
            } label: {
                TabItemView(tabItemType: .tab2, selected: self.index == 1)
            }
            Spacer()
            Button {
                index = 2
            } label: {
                TabItemView(tabItemType: .tab3, selected: self.index == 2)
            }
            Spacer()
            Button {
                index = 3
            } label: {
                TabItemView(tabItemType: .tab4, selected: self.index == 3)
            }
            Spacer()
            Button {
                index = 4
            } label: {
                TabItemView(tabItemType: .tab5, selected: self.index == 4)
            }
        }
        .padding()
        .background(Color(red: 188/255, green: 216/255, blue: 193/255))
        .animation(.spring(), value: index)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(index: .constant(0))
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
