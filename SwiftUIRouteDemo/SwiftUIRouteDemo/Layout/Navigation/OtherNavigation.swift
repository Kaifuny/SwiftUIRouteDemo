//
//  HomeNavigation.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//
import SwiftUI

struct OtherNavigation: View {
    @EnvironmentObject var router: Route.Router
    
    var body: some View {
        VStack {
            ForEach(Route.otherRoute.allCases.dropFirst(), id: \.self) { type in
                let info = Route.other(type).info()
                Button {
                    router.route(to: info)
                } label: {
                    Text(info.name)
                }
            }
        }
    }
}
