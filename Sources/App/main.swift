import FHClient
import GRPC
import NIO

let group = PlatformSupport.makeEventLoopGroup(loopCount: 1)

let channel = ClientConnection
    .insecure(group: group)
    .connect(host: "162.243.16.251", port: 50051)

let client = SnapshotServiceClient(channel: channel)

let query = SnapshotQuery.with { _ in }

do {
    let response = try client.getSnapshots(query)
        .response
        .wait()
    
    response.snapshots.forEach { print($0) }
    print(response.snapshots.count)
    
} catch {
    fatalError()
}



