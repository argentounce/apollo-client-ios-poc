// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct CreateStudentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - nickname
  ///   - year
  ///   - activeSection
  ///   - hasRegisteredParent
  ///   - parents
  public init(nickname: String, year: Int, activeSection: Section, hasRegisteredParent: Swift.Optional<Bool?> = nil, parents: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["nickname": nickname, "year": year, "activeSection": activeSection, "hasRegisteredParent": hasRegisteredParent, "parents": parents]
  }

  public var nickname: String {
    get {
      return graphQLMap["nickname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nickname")
    }
  }

  public var year: Int {
    get {
      return graphQLMap["year"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "year")
    }
  }

  public var activeSection: Section {
    get {
      return graphQLMap["activeSection"] as! Section
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "activeSection")
    }
  }

  public var hasRegisteredParent: Swift.Optional<Bool?> {
    get {
      return graphQLMap["hasRegisteredParent"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hasRegisteredParent")
    }
  }

  public var parents: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["parents"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "parents")
    }
  }
}

public enum Section: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case primaria
  case secundaria
  case preparatoria
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "PRIMARIA": self = .primaria
      case "SECUNDARIA": self = .secundaria
      case "PREPARATORIA": self = .preparatoria
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .primaria: return "PRIMARIA"
      case .secundaria: return "SECUNDARIA"
      case .preparatoria: return "PREPARATORIA"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Section, rhs: Section) -> Bool {
    switch (lhs, rhs) {
      case (.primaria, .primaria): return true
      case (.secundaria, .secundaria): return true
      case (.preparatoria, .preparatoria): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Section] {
    return [
      .primaria,
      .secundaria,
      .preparatoria,
    ]
  }
}
