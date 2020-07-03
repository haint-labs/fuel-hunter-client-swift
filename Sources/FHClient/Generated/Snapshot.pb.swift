// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: models/Snapshot.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Fuel_Hunter_Snapshot {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var provider: String = String()

  public var name: String = String()

  public var address: String = String()

  public var type: String = String()

  public var city: String = String()

  public var price: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Query {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct Response {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var snapshots: [Fuel_Hunter_Snapshot] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "fuel.hunter"

extension Fuel_Hunter_Snapshot: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Snapshot"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "provider"),
    2: .same(proto: "name"),
    3: .same(proto: "address"),
    4: .same(proto: "type"),
    5: .same(proto: "city"),
    6: .same(proto: "price"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.provider)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularStringField(value: &self.address)
      case 4: try decoder.decodeSingularStringField(value: &self.type)
      case 5: try decoder.decodeSingularStringField(value: &self.city)
      case 6: try decoder.decodeSingularFloatField(value: &self.price)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.provider.isEmpty {
      try visitor.visitSingularStringField(value: self.provider, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 3)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 4)
    }
    if !self.city.isEmpty {
      try visitor.visitSingularStringField(value: self.city, fieldNumber: 5)
    }
    if self.price != 0 {
      try visitor.visitSingularFloatField(value: self.price, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Snapshot, rhs: Fuel_Hunter_Snapshot) -> Bool {
    if lhs.provider != rhs.provider {return false}
    if lhs.name != rhs.name {return false}
    if lhs.address != rhs.address {return false}
    if lhs.type != rhs.type {return false}
    if lhs.city != rhs.city {return false}
    if lhs.price != rhs.price {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuel_Hunter_Snapshot.Query: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Fuel_Hunter_Snapshot.protoMessageName + ".Query"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Snapshot.Query, rhs: Fuel_Hunter_Snapshot.Query) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuel_Hunter_Snapshot.Response: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Fuel_Hunter_Snapshot.protoMessageName + ".Response"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "snapshots"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.snapshots)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.snapshots.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.snapshots, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Snapshot.Response, rhs: Fuel_Hunter_Snapshot.Response) -> Bool {
    if lhs.snapshots != rhs.snapshots {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
