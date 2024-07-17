//
//  Route+Router.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//
import SwiftUI

extension Route {
  class Router: ObservableObject {
    @Published var current: Route.RouteInfo = Route.home(.defaults).info()
    
    func route(to route_info: Route.RouteInfo) {
      current = route_info
    }
    
    func route(to route: Route) {
      current = route.info()
    }
    
    func route(to route: Route, name: String) {
      current = route.info()
      current.name = name
    }
  }
}
