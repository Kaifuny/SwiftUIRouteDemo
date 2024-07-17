//
//  HomeNavigation.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//
import SwiftUI

struct HomeNavigation: View {
    @EnvironmentObject var router: Route.Router
    
    var body: some View {
        VStack {
            ForEach(Route.homeRoute.allCases.dropFirst(), id: \.self) { type in
                let info = Route.home(type).info()
                Button {
                    router.route(to: info)
                } label: {
                    Text(info.name)
                }
            }
        }
    }
}
