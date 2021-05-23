//
//  Binding.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import Foundation

class Binding<T> {
  var value: T {
    didSet {
      listener?(value)
    }
  }
  private var listener: ((T) -> Void)?
  init(value: T) {
    self.value = value
  }
  func bind(_ closure: @escaping (T) -> Void) {
    closure(value)
    listener = closure
  }
}
