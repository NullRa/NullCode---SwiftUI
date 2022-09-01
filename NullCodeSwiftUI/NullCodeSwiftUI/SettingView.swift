//
//  SettingView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var tabSelection: Int
    @Binding var showTab3: Bool
    @Binding var showTab4: Bool
    @Binding var showTab5: Bool
    @Binding var navTitle: String
    var body: some View {
        VStack{
            Text("Setting")
                .padding()
            VStack {
                HStack{
                    Spacer()
                    Text("顯示Test Tab")
                    Spacer()
                    Toggle(isOn: $showTab3) {
                        Text("test1")
                    }.labelsHidden()
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text("顯示Habit Tab")
                    Spacer()
                    Toggle(isOn: $showTab4) {
                        Text("test2")
                    }.labelsHidden()
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text("顯示Others Tab")
                    Spacer()
                    Toggle(isOn: $showTab5) {
                        Text("test3")
                    }.labelsHidden()
                    Spacer()
                }
            }
            Spacer()
            Button {
                if tabSelection == 4 && showTab5 == false {
                    tabSelection = 0
                    navTitle = TabItemType.tab1.rawValue
                }
                if tabSelection == 3 && showTab4 == false {
                    tabSelection = 0
                    navTitle = TabItemType.tab1.rawValue
                }
                if tabSelection == 2 && showTab3 == false {
                    tabSelection = 0
                    navTitle = TabItemType.tab1.rawValue
                }
                dismiss()
            } label: {
                Text("關閉")
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(tabSelection: .constant(0), showTab3: .constant(false), showTab4: .constant(false), showTab5: .constant(false), navTitle: .constant("Me"))
    }
}
