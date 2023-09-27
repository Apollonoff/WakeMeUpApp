//
//  SortPicker.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 27.09.2023.
//

import SwiftUI

struct SortPicker: View {
    @State private var selection: Int = 0
    var body: some View {
        VStack {
            HStack {
                Text("Sorting by:")
                    .padding(.leading, 20)
                    .foregroundColor(Color(cgColor: fontColor))
                Spacer()
            }
            Picker(selection: $selection, label: Text("")) {
                Text("Category").tag(0)
                Text("Complexity").tag(1)
                Text("Likes").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
    }
}


struct SortPicker_Previews: PreviewProvider {
    static var previews: some View {
        SortPicker()
    }
}
