//
//  TestCell.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 27.09.2023.
//

import SwiftUI

struct TestCell: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                QuestionPart()
                    .padding(10)
                QuestionDivider1()
                ComplexityGenreView1()
                    .padding(10)
            }
            Spacer()
            ImageView()
                .padding(5)
            Spacer()
        }
        .background(Color(cgColor: bgCellColor))
        .cornerRadius(20)
        .padding(10)
    }
}

struct QuestionPart: View {
    var body: some View {
        Text("How old are you?")
            .lineLimit(nil)
            .font(.title)
            .foregroundColor(Color(cgColor: fontColor))
    }
}

struct ImageView: View {
    @State private var isActive: Bool = false
    @State private var heartColor: CGColor = dividerColor
    var body: some View {
        Button {
            if isActive == false {
                isActive = true
                heartColor = redHeartColor
            } else {
                isActive = false
                heartColor = dividerColor
            }
        } label: {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(Color(cgColor: heartColor))
        }
    }
}

struct ComplexityGenreView1: View {
    var body: some View {
        HStack {
            Spacer()
            ComplexityView1()
            Spacer()
            Rectangle().fill(Color(dividerColor)).frame(width: 1)
            Spacer()
            GenreView1()
            Spacer()
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ComplexityView1: View {
    var body: some View {
        Text("Difficult")
            .font(.title2)
            .foregroundColor(Color(cgColor: fontColor))
    }
}

struct GenreView1: View {
    var body: some View {
        Text("Genre")
            .font(.title2)
            .foregroundColor(Color(cgColor: fontColor))
    }
}

struct QuestionDivider1: View {
    var body: some View {
        HStack {
            Spacer()
            Divider()
                .frame(width: 280, height: 1)
                .overlay(Color(dividerColor))
            Spacer()
        }
    }
}

struct TestCell_Previews: PreviewProvider {
    static var previews: some View {
        TestCell()
    }
}
