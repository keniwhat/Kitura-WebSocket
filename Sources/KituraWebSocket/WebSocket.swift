/*
 * Copyright IBM Corporation 2015
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import KituraNet

/// Main class for the Kitura-WebSocket API. Used to register `WebSocketService` classes
/// that will handle WebSocket connections for specific paths.
public class WebSocket {
    private static let factory = WSConnectionUpgradeFactory()
    
    /// Register a `WebSocketService` for a specific path
    ///
    /// - Parameter service: The `WebSocketService` being registered.
    /// - Parameter onPath: The path that will be in the HTTP "Upgrade" request. Used
    ///                    to connect the upgrade request with a specific `WebSocketService`
    public static func register(service: WebSocketService, onPath path: String) {
        factory.register(service: service, onPath: path.lowercased())
    }
}
