//
//  ContentView.swift
//  CircleWindow
//
//  Created by Koichiro Eto on 2020/08/05.
//  Copyright © 2020 Koichiro Eto. All rights reserved.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            TextView()
                .mask(Circle())
        }.frame(width: 480, height: 300)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
