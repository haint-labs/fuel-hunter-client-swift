import FHClient
import GRPC
import NIO

let group = PlatformSupport.makeEventLoopGroup(loopCount: 1)

let channel = ClientConnection
    .insecure(group: group)
    .connect(host: "162.243.16.251", port: 50051)

let client = Fuel_Hunter_FuelHunterServiceClient(channel: channel)

let companiesFuture = client
    .getCompanies(Fuel_Hunter_Company.Query.with { _ in })
    .response

companiesFuture
    .whenSuccess {
        print("Companies: \($0.companies.count)")
        print($0.companies)
    }

let stationFuture = client
    .getStations(Fuel_Hunter_Station.Query.with { _ in })
    .response
    
stationFuture
    .whenSuccess {
        print("Stations: \($0.stations.count)")
        print($0.stations)
    }

let pricesFuture = client
    .getPrices(Fuel_Hunter_Price.Query.with { _ in })
    .response

pricesFuture
    .whenSuccess {
        print("Prices: \($0.items.count))")
        print($0.items)
    }

let job = companiesFuture
    .and(stationFuture)
    .and(pricesFuture)

do {
    try _ = job.wait()
} catch {
    print(error)
}

