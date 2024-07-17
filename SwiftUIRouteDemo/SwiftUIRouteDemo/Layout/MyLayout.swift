//
//  MyLayout.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//

import SwiftUI

struct MyLayout: View {
    @EnvironmentObject var router: Route.Router

    @State private var selection: Route.RouteInfo = Route.home(.defaults).info()

    var body: some View {
        NavigationSplitView() {
            VStack {
                HStack {
                    Button(action: {
                        selection = Route.home(.defaults).info()
                    }) {
                        Text("Home")
                    }
                    Button(action: {
                        selection = Route.other(.defaults).info()
                    }) {
                        Text("Other")
                    }
                }
                Divider()
                if (selection.inHome()) {
                    HomeNavigation()
                        .onAppear {
                            router.route(to: Route.home(.defaults))
                        }
                }
                if (selection.inOthers()) {
                    OtherNavigation()
                        .onAppear {
                            router.route(to: Route.other(.defaults))
                        }
                }
                Spacer()
            }
            .navigationSplitViewColumnWidth(min: 300, ideal: 300, max: 600)
        } detail: {
            AnyView(router.current.view)
              .navigationTitle(router.current.name)
        }
        .navigationTitle("SwiftUIRouteDemo")
    }
}

#Preview {
    MyLayout()
        .frame(width: 1000, height: 600)
        .environmentObject(Route.Router())
}
