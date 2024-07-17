//
//  Route+Path.swift
//  Ohyo
//
//  Created by Kaifuny on 2024/6/20.
//
import Foundation
import SwiftUI

extension Route {
  struct RouteInfo: Identifiable, Hashable {
    var root_path: URL = URL(string: "test://")!

    var url: URL
    var icon: String?
    var name: String
    var view: any View
    var params: [String: Any]?
    
    public init(_ url: String, name: String,view: any View, params: [String: Any]) {
      self.url = URL(string: url)!
      self.name = name
      self.view = view
      self.params = params
    }
    
    public init(_ url: String, name: String,view: any View) {
      self.url = URL(string: url)!
      self.name = name
      self.view = view
    }

    public init(_ url: String, name: String, icon: String,view: any View) {
      self.url = URL(string: url)!
      self.name = name
      self.view = view
      self.icon = icon
    }
    
    func inHome() -> Bool {
      return self.url.path().hasPrefix(
        Route.home(.defaults).info().url.absoluteString
      )
    }
    
    func inOthers() -> Bool {
      return self.url.path().hasPrefix(
        Route.other(.defaults).info().url.absoluteString
      )
    }

    // override -------------------------------------------------------------------
    var id: String {
      self.url.path()
    }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(id)
    }
    
    static func == (lhs: Route.RouteInfo, rhs: Route.RouteInfo) -> Bool {
      return lhs.url == rhs.url
    }
  }
}
