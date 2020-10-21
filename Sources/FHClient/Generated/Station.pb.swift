// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: models/Station.proto
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

public struct Fuel_Hunter_Station {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var company: String = String()

  public var latitude: Float = 0

  public var longitude: Float = 0

  public var address: String = String()

  public var city: String = String()

  public var name: String = String()

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

    public var stations: [Fuel_Hunter_Station] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct UpdateRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var stations: [Fuel_Hunter_Station] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "fuel.hunter"

extension Fuel_Hunter_Station: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Station"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "id", json: "_id"),
    2: .same(proto: "company"),
    3: .same(proto: "latitude"),
    4: .same(proto: "longitude"),
    5: .same(proto: "address"),
    6: .same(proto: "city"),
    7: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.company)
      case 3: try decoder.decodeSingularFloatField(value: &self.latitude)
      case 4: try decoder.decodeSingularFloatField(value: &self.longitude)
      case 5: try decoder.decodeSingularStringField(value: &self.address)
      case 6: try decoder.decodeSingularStringField(value: &self.city)
      case 7: try decoder.decodeSingularStringField(value: &self.name)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.company.isEmpty {
      try visitor.visitSingularStringField(value: self.company, fieldNumber: 2)
    }
    if self.latitude != 0 {
      try visitor.visitSingularFloatField(value: self.latitude, fieldNumber: 3)
    }
    if self.longitude != 0 {
      try visitor.visitSingularFloatField(value: self.longitude, fieldNumber: 4)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 5)
    }
    if !self.city.isEmpty {
      try visitor.visitSingularStringField(value: self.city, fieldNumber: 6)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Station, rhs: Fuel_Hunter_Station) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.company != rhs.company {return false}
    if lhs.latitude != rhs.latitude {return false}
    if lhs.longitude != rhs.longitude {return false}
    if lhs.address != rhs.address {return false}
    if lhs.city != rhs.city {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuel_Hunter_Station.Query: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Fuel_Hunter_Station.protoMessageName + ".Query"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Station.Query, rhs: Fuel_Hunter_Station.Query) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuel_Hunter_Station.Response: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Fuel_Hunter_Station.protoMessageName + ".Response"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "stations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.stations)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.stations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.stations, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Station.Response, rhs: Fuel_Hunter_Station.Response) -> Bool {
    if lhs.stations != rhs.stations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuel_Hunter_Station.UpdateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Fuel_Hunter_Station.protoMessageName + ".UpdateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "stations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.stations)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.stations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.stations, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuel_Hunter_Station.UpdateRequest, rhs: Fuel_Hunter_Station.UpdateRequest) -> Bool {
    if lhs.stations != rhs.stations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
