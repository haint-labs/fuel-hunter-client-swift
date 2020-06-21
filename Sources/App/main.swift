import FHClient
import GRPC
import NIO

let group = PlatformSupport.makeEventLoopGroup(loopCount: 1)

let channel = ClientConnection
    .insecure(group: group)
    .connect(host: "162.243.16.251", port: 50051)

let client = FuelHunterServiceClient(channel: channel)

let companiesFuture = client
    .getCompanies(Company.Query.with { _ in })
    .response

companiesFuture
    .whenSuccess {
        print("Companies: \($0.companies.count)")
        print($0.companies)
    }

let stationFuture = client
    .getStations(Station.Query.with { _ in })
    .response
    
stationFuture
    .whenSuccess {
        print("Stations: \($0.stations.count)")
        print($0.stations)
    }


let job = companiesFuture
    .and(stationFuture)

do {
    try _ = job.wait()
} catch {
    print(error)
}

