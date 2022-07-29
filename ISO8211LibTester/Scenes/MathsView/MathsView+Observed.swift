//
//  MathsView+Observed.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 27/7/22.
//

import Foundation
import ISO8211Lib

extension MathsView {
    
    enum OperationError: Error {
        case divideByZero
    }
    
    /// Application logic for MathsView
    class Observed: ObservableObject {
        
        let library = ISO8211Lib()
        
        func performAddition(value1: Float, value2: Float) -> Float {
            return library.addition(value1: value1, value2: value2)
        }
        
        func performSubtraction(value1: Float, value2: Float) -> Float {
            return library.subtraction(value1: value1, value2: value2)
        }
        
        func performMultiplication(value1: Float, value2: Float) -> Float {
            return library.multiplication(value1: value1, value2: value2)
        }
        
        func performDivision(value1: Float, value2: Float) throws -> Float {
           return library.division(value1: value1, value2: value2)
        }
    }
}
