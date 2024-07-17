//
//  Route.swift
//  SwiftUIRouteDemo
//
//  Created by Kaifuny on 2024/7/18.
//
import Foundation

enum Route {
    case home(homeRoute)
    case other(otherRoute)
    
    enum homeRoute: CaseIterable, Identifiable, Hashable {
        var id: String { UUID().uuidString }
        
        case defaults // 必须默认第一个，为后续遍历提供便利方便剔除
        case home
        case todos
        case favorites
    }
    
    enum otherRoute: CaseIterable, Identifiable, Hashable {
        var id: String { UUID().uuidString }
        
        case defaults
        case setting
        case order
    }
}
