//
//  ContentView.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router: Route.Router = Route.Router()

    var body: some View {
        MyLayout()
          .frame(minWidth: 1000, minHeight: 600)
          .environmentObject(router)
    }
}

#Preview {
    ContentView()
}
