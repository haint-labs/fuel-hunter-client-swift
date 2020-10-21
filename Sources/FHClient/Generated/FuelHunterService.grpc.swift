//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: FuelHunterService.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Fuel_Hunter_FuelHunterServiceClient, then call methods of this protocol to make API calls.
public protocol Fuel_Hunter_FuelHunterServiceClientProtocol: GRPCClient {
  func getStations(
    _ request: Fuel_Hunter_Station.Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Fuel_Hunter_Station.Query, Fuel_Hunter_Station.Response>

  func updateStations(
    _ request: Fuel_Hunter_Station.UpdateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Fuel_Hunter_Station.UpdateRequest, Fuel_Hunter_Update.Response>

  func getCompanies(
    _ request: Fuel_Hunter_Company.Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Fuel_Hunter_Company.Query, Fuel_Hunter_Company.Response>

  func updateCompanies(
    _ request: Fuel_Hunter_Company.UpdateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Fuel_Hunter_Company.UpdateRequest, Fuel_Hunter_Update.Response>

  func getPrices(
    _ request: Fuel_Hunter_Price.Query,
    callOptions: CallOptions?
  ) -> UnaryCall<Fuel_Hunter_Price.Query, Fuel_Hunter_Price.Response>

}

extension Fuel_Hunter_FuelHunterServiceClientProtocol {

  /// Unary call to GetStations
  ///
  /// - Parameters:
  ///   - request: Request to send to GetStations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getStations(
    _ request: Fuel_Hunter_Station.Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Fuel_Hunter_Station.Query, Fuel_Hunter_Station.Response> {
    return self.makeUnaryCall(
      path: "/fuel.hunter.FuelHunterService/GetStations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to UpdateStations
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateStations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateStations(
    _ request: Fuel_Hunter_Station.UpdateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Fuel_Hunter_Station.UpdateRequest, Fuel_Hunter_Update.Response> {
    return self.makeUnaryCall(
      path: "/fuel.hunter.FuelHunterService/UpdateStations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetCompanies
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCompanies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCompanies(
    _ request: Fuel_Hunter_Company.Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Fuel_Hunter_Company.Query, Fuel_Hunter_Company.Response> {
    return self.makeUnaryCall(
      path: "/fuel.hunter.FuelHunterService/GetCompanies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to UpdateCompanies
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateCompanies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateCompanies(
    _ request: Fuel_Hunter_Company.UpdateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Fuel_Hunter_Company.UpdateRequest, Fuel_Hunter_Update.Response> {
    return self.makeUnaryCall(
      path: "/fuel.hunter.FuelHunterService/UpdateCompanies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetPrices
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPrices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPrices(
    _ request: Fuel_Hunter_Price.Query,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Fuel_Hunter_Price.Query, Fuel_Hunter_Price.Response> {
    return self.makeUnaryCall(
      path: "/fuel.hunter.FuelHunterService/GetPrices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Fuel_Hunter_FuelHunterServiceClient: Fuel_Hunter_FuelHunterServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the fuel.hunter.FuelHunterService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

