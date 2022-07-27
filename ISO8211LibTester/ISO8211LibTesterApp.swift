//
//  ISO8211LibTesterApp.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 27/7/22.
//

import SwiftUI

@main
struct ISO8211LibTesterApp: App {
    var body: some Scene {
        WindowGroup {
#if os(macOS)
            MathsView()
                .frame(minWidth: 400, idealWidth: 500, maxWidth: 600, minHeight: 400, idealHeight: 500, maxHeight: 600, alignment: .center)
#else
            MathsView()
#endif
        }
    }
}
