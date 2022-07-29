//
//  CatalogView.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 28/7/22.
//

import SwiftUI

struct CatalogView: View {
    
    @StateObject var model = Observed()
    
    var body: some View {
        Button("Choose", action: {
            if let filePath = model.showOpenPanel() {
                model.readCatalog(filePath: filePath)
            }
        })
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
