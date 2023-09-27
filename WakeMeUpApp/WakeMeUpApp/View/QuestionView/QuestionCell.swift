//
//  QuestionCell.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 26.09.2023.
//

import SwiftUI

enum complexity: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
    
    var customColor: CGColor {
        switch self {
        case .easy:
            return easyColor
        case .medium:
            return mediumColor
        case .hard:
            return hardColor
        }
    }
}

struct QuestionCell: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                QuestionName()
                    .padding(10)
                QuestionDivider()
                ComplexityGenreView()
                    .padding(10)
            }
            Spacer()
            HeartButtonView()
                .padding(5)
            Spacer()
        }
        .background(Color(cgColor: bgCellColor))
        .cornerRadius(20)
        .padding(10)
    }
}

//MARK: - Like Button
struct HeartButtonView: View {
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
//MARK: - Question Name

struct QuestionName: View {
    var body: some View {
        Text("How old are you?")
            .lineLimit(nil)
            .font(.title)
            .foregroundColor(Color(cgColor: fontColor))
    }
}

//MARK: - Complexity and Genre

struct ComplexityView: View {
    var body: some View {
        Text(complexity.easy.rawValue)
            .lineLimit(nil)
            .font(.title2)
            .foregroundColor(Color(cgColor: fontColor))
            .padding(.trailing, 10)
    }
}

struct GenreView: View {
    var body: some View {
        Text("Genre")
            .lineLimit(nil)
            .font(.title2)
            .foregroundColor(Color(cgColor: fontColor))
           
    }
}

struct ComplexityGenreView: View {
    var body: some View {
        HStack {
            Spacer()
            ComplexityCircle()
            ComplexityView()
            Spacer()
            Rectangle().fill(Color(dividerColor)).frame(width: 1)
            Spacer()
            GenreView()
            Spacer()
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

//MARK: - Custom QuestionCell Divider
struct QuestionDivider: View {
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

//MARK: - Complexity Circle
struct ComplexityCircle: View {
    var body: some View {
        Image(systemName: "circle.fill")
            .resizable()
            .frame(width: 20, height: 20)
            .foregroundColor(Color(cgColor: complexity.easy.customColor))
    }
}


struct QuestionCell_Previews: PreviewProvider {
    static var previews: some View {
        QuestionCell()
    }
}

