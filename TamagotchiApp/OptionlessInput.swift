//
//  OptionlessInput.swift
//  TamagotchiApp
//
//  Created by Thomson, Jamie (NA) on 25/01/2022.
//

import Foundation

class OptionlessInput {
    func getInteger(prompt: String = "") -> Int {
      if prompt != "" {
            print(prompt)
        }
        if let input = readLine() {
            if let integer = Int(input) {
                return integer
            }
        }
        return 0
    }

    func getDouble(prompt: String = "") -> Double {
      if prompt != "" {
            print(prompt)
        }
        if let input = readLine() {
            if let double = Double(input) {
                return double
            }
        }
        return 0.0
    }

    func getString(prompt: String = "") -> String {
        if prompt != "" {
            print(prompt)
        }
        if let input = readLine() {
            return input
        } else {
            return ""
        }
    }
}
