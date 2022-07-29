//
//  HomeTabView.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 28/7/22.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            MathsView()
                .tabItem {
                    Text("Calculator")
                }
            CatalogView()
                .tabItem {
                    Text("Catalog")
                }
        }
        .padding()
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
