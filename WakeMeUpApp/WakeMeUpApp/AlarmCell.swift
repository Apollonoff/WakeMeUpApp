//
//  AlarmCell.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI

//rgb(23, 107, 135)
fileprivate var bgColor: CGColor = CGColor(red: 23/255, green: 107/255, blue: 135/255, alpha: 1)
//rgb(238, 238, 238)
fileprivate var fontColor: CGColor = CGColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
//rgb(100, 204, 197)
fileprivate var dividerColor: CGColor = CGColor(red: 100/255, green: 204/255, blue: 197/255, alpha: 1)
struct MainMenuCell: View {
    var body: some View {
        VStack(spacing: 16.0) {
            DateText()
            ModDivider()
            HStack {
                Spacer()
                FallSleep()
                Spacer()
                Rectangle().fill(Color(dividerColor)).frame(width: 1)
                Spacer()
                WakeUp()
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            ModDivider()
            MusicName()
                .padding(.leading, 10)
                .padding(.trailing, 10)
            ModDivider()
            NumberOfQuestions()
        }
        .background(Color(bgColor))
        .cornerRadius(50.0)
        .padding(10)
    
    }
}

struct DateText: View {
    var body: some View {
        Text("Monday, August 31")
            .font(.title)
            .foregroundColor(Color(fontColor))
            .padding(.top)
            .frame(height: 50)
    }
}

struct ModDivider: View {
    var body: some View {
        HStack {
            Spacer()
            Divider()
                .frame(width: 350, height: 1)
                .overlay(Color(dividerColor))
            Spacer()
        }
    }
}

struct FallSleep: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.zzz")
                .resizable()
                .foregroundColor(Color(fontColor))
                .frame(width: 50, height: 50)
            Text("23:30")
                .font(.title)
                .foregroundColor(Color(fontColor))
        }
    }
}

struct WakeUp: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color(fontColor))
            Text("6:30")
                .font(.title)
                .foregroundColor(Color(fontColor))
        }
    }
}

struct MusicName: View {
    var body: some View {
        HStack {
            Image(systemName: "music.note.list")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(Color(fontColor))
            Text("Bring Me The Horizon - Can You Feel My Heart")
                .lineLimit(nil)
                .font(.title2)
                .foregroundColor(Color(fontColor))
        }
        
    }
}

struct NumberOfQuestions: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Four random questions!")
                .foregroundColor(Color(fontColor))
                .font(.title2)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding(.bottom)
                .frame(height: 50)
            Spacer()
        }
    }
}
struct MainMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuCell()
    }
}
