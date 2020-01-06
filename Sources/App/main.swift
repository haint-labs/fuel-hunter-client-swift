import FHClient
import GRPC
import NIO

let connection = ClientConnection(
    configuration: ClientConnection.Configuration(
        target: .hostAndPort("localhost", 50051),
        eventLoopGroup: MultiThreadedEventLoopGroup(
            numberOfThreads: 1
        )
    )
)

let client = SnapshotServiceServiceClient(connection: connection)

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



