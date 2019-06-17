//
//  Model.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

protocol Model: CustomStringConvertible {
    var id: Int { get }
}

// Marker Protocol for Sourcery
protocol AutoEquatable {}
