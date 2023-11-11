//
//  ContentView.swift
//  Memorize
//
//  Created by Noel Velasco on 5/31/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack {
      ForEach(0..<4, content: { index in
        CardView(isFaceUp: true)
      })
    }
    .padding()
    .foregroundColor(Color.orange)
    .font(Font.largeTitle)
  }
}

struct CardView: View {
  var isFaceUp: Bool
  var body: some View {
    if isFaceUp {
      ZStack {
        RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
        RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
        Text("👻")
      }
    } else {
      RoundedRectangle(cornerRadius: 10.0).fill()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
