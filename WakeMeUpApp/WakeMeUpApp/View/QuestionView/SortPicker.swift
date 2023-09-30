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
    init() {
    // Sets the background color of the Picker
       UISegmentedControl.appearance().backgroundColor = UIColor(cgColor: bgCellColor)
    // Disappears the divider
       UISegmentedControl.appearance().setDividerImage(UIImage(), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    // Changes the color for the selected item
       UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(cgColor: tabBarColor)
//    // Changes the text color for the selected item
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(cgColor: dividerColor)], for: .selected)
    }
}


struct SortPicker_Previews: PreviewProvider {
    static var previews: some View {
        SortPicker()
    }
}
