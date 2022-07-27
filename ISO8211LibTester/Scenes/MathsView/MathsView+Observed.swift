//
//  MathsView+Observed.swift
//  ISO8211LibTester
//
//  Created by Christopher Alford on 27/7/22.
//

import Foundation

extension MathsView {
    
    enum OperationError: Error {
        case divideByZero
    }
    
    /// Application logic for MathsView
    class Observed: ObservableObject {
        
        func performAddition(value1: Float, value2: Float) -> Float {
            return CppWrapper().addition(value1, value2)
        }
        
        func performSubtraction(value1: Float, value2: Float) -> Float {
            return CppWrapper().subtraction(value1, value2)
        }
        
        func performMultiplication(value1: Float, value2: Float) -> Float {
            return CppWrapper().multiplication(value1, value2)
        }
        
        func performDivision(value1: Float, value2: Float) throws -> Float {
            var value: Float = 0
            do {
                try CppWrapper.catchException {
                    value = CppWrapper().division(value1, value2)
                }
            } catch {
                throw OperationError.divideByZero
            }
            return value
        }
    }
}
