//
//  Route+Config.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//
import SwiftUI

extension Route {
    func info() -> RouteInfo {
        switch self {
            case .home(let homeRoute):
                switch homeRoute {
                    case .defaults:
                        return RouteInfo("/home", name: NSLocalizedString("Home", comment: ""), view: Text("hell home defaults"))
                    case .home:
                        return RouteInfo("/home", name: NSLocalizedString("Home", comment: ""), view: Text("hell home"))
                    case .todos:
                        return RouteInfo("/home/todos", name: NSLocalizedString("Todos", comment: ""), view: Text("hello todos"))
                    case .favorites:
                        return RouteInfo("/home/favorites", name: NSLocalizedString("Favorites", comment: ""), view: Text("hello todos"))
                }
            case .other(let otherRoute):
                switch otherRoute {
                    case .defaults:
                        return RouteInfo("/other", name: NSLocalizedString("Other", comment: ""), view: Text("hello other defaults"))
                    case .setting:
                        return RouteInfo("/other/setting", name: NSLocalizedString("Setting", comment: ""), view: Text("hello other setting"))
                    case .order:
                        return RouteInfo("/other/order", name: NSLocalizedString("Order", comment: ""), view: Text("hello other order"))
                }
        }
    }
}
