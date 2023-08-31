//
//  AlarmCell.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 31.08.2023.
//

import SwiftUI

struct MainMenuCell: View {
    var body: some View {
        VStack(spacing: 16.0) {
            DateText()
            ModDivider()
            HStack {
                Spacer()
                FallSleep()
                Spacer()
                Rectangle().fill(Color.gray).frame(width: 1)
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
    }
}

struct DateText: View {
    var body: some View {
        Text("Monday, August 31")
            .font(.title)
    }
}

struct ModDivider: View {
    var body: some View {
        HStack {
            Spacer()
            Divider()
                .frame(width: 350, height: 1)
                .overlay(Color.gray)
            Spacer()
        }
    }
}

struct FallSleep: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.zzz")
                .resizable()
                .frame(width: 50, height: 50)
            Text("23:30")
                .font(.title)
        }
    }
}

struct WakeUp: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 50, height: 50)
            Text("6:30")
                .font(.title)
        }
    }
}

struct MusicName: View {
    var body: some View {
        HStack {
            Image(systemName: "music.note.list")
                .resizable()
                .frame(width: 40, height: 40)
            Text("Bring Me The Horizon - Can You Feel My Heart")
                .lineLimit(nil)
                .font(.title2)
        }
        
    }
}

struct NumberOfQuestions: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Four random questions!")
                .font(.title2)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
            Spacer()
        }
    }
}
struct MainMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuCell()
    }
}
