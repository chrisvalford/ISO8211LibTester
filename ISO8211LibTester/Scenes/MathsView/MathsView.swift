//
//  MathsView.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 27/7/22.
//

import SwiftUI

struct MathsView: View {
    @State var sliderValue1: Float = 50
    @State var sliderValue2: Float = 50
    @State var result: Float = 0
    
    @StateObject var model = Observed()
    
    var body: some View {
        VStack {
            Text("Adjust the sliders and tap a button")
                .padding(.vertical)
            VStack {
                Slider(value: $sliderValue1, in: 0...100)
                Text("\(sliderValue1)")
                    .font(.headline)
            }
            .padding(.vertical)
            VStack {
                Slider(value: $sliderValue2, in: 0...100)
                Text("\(sliderValue2)")
                    .font(.headline)
            }
            .padding(.vertical)
            HStack {
                MathsButtonView(title: "Add", action: performOperation)
                MathsButtonView(title: "Subtract", action: performOperation)
                MathsButtonView(title: "Multiply", action: performOperation)
                MathsButtonView(title: "Divide", action: performOperation)
            }
            .padding(.vertical)
            Text("\(result)")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.green)
                .clipShape(Capsule())
        }
        .padding()
    }
}

// MARK: - UI Logic
extension MathsView {
    func performOperation(_ operation: String) {
        switch operation {
        case "Add":
            result = model.performAddition(value1: sliderValue1, value2: sliderValue2)
        case "Subtract":
            result = model.performSubtraction(value1: sliderValue1, value2: sliderValue2)
        case "Multiply":
            result = model.performMultiplication(value1: sliderValue1, value2: sliderValue2)
        case "Divide":
            do {
                result = try model.performDivision(value1: sliderValue1, value2: sliderValue2)
            } catch {
                // TODO: Provide feedback to user
                print(error)
                result = 0
            }
        default:
            return
        }
    }
}

// MARK: - Preview
struct MathsView_Previews: PreviewProvider {
    static var previews: some View {
        MathsView()
    }
}
