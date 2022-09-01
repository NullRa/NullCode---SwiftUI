//
//  NavView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct NavView: View {
    @Binding var navTitle: String
    @Binding var showingSettingView: Bool
    var body: some View {
        HStack {
            Spacer()
            Text(navTitle)
                .font(.largeTitle)
                .padding(.leading,50)
            Spacer()
            Button {
                showingSettingView = true
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .padding(.trailing)
            }
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView(navTitle: .constant("Me"), showingSettingView: .constant(false))
    }
}
