//
//  CatalogView+Observed.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 28/7/22.
//

import Foundation
import ISO8211Lib

#if os(macOS)
import AppKit
#endif

extension CatalogView {
    
    /// Application logic for MathsView
    class Observed: ObservableObject {
        let library: ISO8211Lib
        var filePath: URL?
        
        init() {
            library = ISO8211Lib()
        }

        func readCatalog(filePath: URL) {
            if !library.readCatalog(filePath: filePath.relativePath) {
                print("Error reading catalog")
            }
        }
        
#if os(macOS)
        func showOpenPanel() -> URL? {
            let openPanel = NSOpenPanel()
            // TODO: All files, until UTType defined - need .031, .TXT, .000 .002 etc.
            openPanel.allowedContentTypes = []
            openPanel.allowsMultipleSelection = false
            openPanel.canChooseDirectories = false
            openPanel.canChooseFiles = true
            let response = openPanel.runModal()
            return response == .OK ? openPanel.url : nil
        }
        #endif
    }
}
        
