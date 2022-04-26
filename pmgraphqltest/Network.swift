//
//  Network.swift
//  pmgraphqltest
//
//  Created by Miguel Alejandro Hernández Fierro on 21/04/22.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)
    
    private init(){}
}
