//
//  MathsButtonView.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 27/7/22.
//

import SwiftUI

struct MathsButtonView: View {
    var title: String
    var action: (_ operation: String) -> Void
    
    var body: some View {
        Button(title, action: {
            action(title)
        })
#if os(iOS)
        .foregroundColor(.black)
        .padding()
        .background(.yellow)
        .clipShape(Capsule())
#endif
    }
}

