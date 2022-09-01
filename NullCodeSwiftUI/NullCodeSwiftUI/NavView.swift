//
//  NavView.swift
//  NullCodeSwiftUI
//
//  Created by Apple on 2022/9/1.
//

import SwiftUI

struct NavView: View {
    @Binding var showingSettingView: Bool
    var body: some View {
        HStack {
            Spacer()
            Text("Navigation View")
            Spacer()
            Button {
                showingSettingView = true
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 30,height: 30)
            }
        }
        .padding()
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        NavView(showingSettingView: .constant(false))
    }
}
