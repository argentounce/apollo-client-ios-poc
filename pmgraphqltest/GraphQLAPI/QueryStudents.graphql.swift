// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class QueryStudentsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query QueryStudents {
      students {
        __typename
        id
        nickname
        year
        activeSection
        hadActiveSections
        hasRegisteredParent
        parents
        favoriteGames {
          __typename
          id
          name
          playersPerMonth
          rating
          url
        }
      }
    }
    """

  public let operationName: String = "QueryStudents"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("students", type: .nonNull(.list(.nonNull(.object(Student.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(students: [Student]) {
      self.init(unsafeResultMap: ["__typename": "Query", "students": students.map { (value: Student) -> ResultMap in value.resultMap }])
    }

    public var students: [Student] {
      get {
        return (resultMap["students"] as! [ResultMap]).map { (value: ResultMap) -> Student in Student(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Student) -> ResultMap in value.resultMap }, forKey: "students")
      }
    }

    public struct Student: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Student"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("nickname", type: .nonNull(.scalar(String.self))),
          GraphQLField("year", type: .nonNull(.scalar(Int.self))),
          GraphQLField("activeSection", type: .nonNull(.scalar(Section.self))),
          GraphQLField("hadActiveSections", type: .list(.nonNull(.scalar(Section.self)))),
          GraphQLField("hasRegisteredParent", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("parents", type: .list(.nonNull(.scalar(GraphQLID.self)))),
          GraphQLField("favoriteGames", type: .list(.object(FavoriteGame.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, nickname: String, year: Int, activeSection: Section, hadActiveSections: [Section]? = nil, hasRegisteredParent: Bool, parents: [GraphQLID]? = nil, favoriteGames: [FavoriteGame?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Student", "id": id, "nickname": nickname, "year": year, "activeSection": activeSection, "hadActiveSections": hadActiveSections, "hasRegisteredParent": hasRegisteredParent, "parents": parents, "favoriteGames": favoriteGames.flatMap { (value: [FavoriteGame?]) -> [ResultMap?] in value.map { (value: FavoriteGame?) -> ResultMap? in value.flatMap { (value: FavoriteGame) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var nickname: String {
        get {
          return resultMap["nickname"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var year: Int {
        get {
          return resultMap["year"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "year")
        }
      }

      public var activeSection: Section {
        get {
          return resultMap["activeSection"]! as! Section
        }
        set {
          resultMap.updateValue(newValue, forKey: "activeSection")
        }
      }

      public var hadActiveSections: [Section]? {
        get {
          return resultMap["hadActiveSections"] as? [Section]
        }
        set {
          resultMap.updateValue(newValue, forKey: "hadActiveSections")
        }
      }

      public var hasRegisteredParent: Bool {
        get {
          return resultMap["hasRegisteredParent"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "hasRegisteredParent")
        }
      }

      public var parents: [GraphQLID]? {
        get {
          return resultMap["parents"] as? [GraphQLID]
        }
        set {
          resultMap.updateValue(newValue, forKey: "parents")
        }
      }

      public var favoriteGames: [FavoriteGame?]? {
        get {
          return (resultMap["favoriteGames"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [FavoriteGame?] in value.map { (value: ResultMap?) -> FavoriteGame? in value.flatMap { (value: ResultMap) -> FavoriteGame in FavoriteGame(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [FavoriteGame?]) -> [ResultMap?] in value.map { (value: FavoriteGame?) -> ResultMap? in value.flatMap { (value: FavoriteGame) -> ResultMap in value.resultMap } } }, forKey: "favoriteGames")
        }
      }

      public struct FavoriteGame: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Game"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("playersPerMonth", type: .nonNull(.scalar(Int.self))),
            GraphQLField("rating", type: .nonNull(.scalar(Int.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String, playersPerMonth: Int, rating: Int, url: String) {
          self.init(unsafeResultMap: ["__typename": "Game", "id": id, "name": name, "playersPerMonth": playersPerMonth, "rating": rating, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var playersPerMonth: Int {
          get {
            return resultMap["playersPerMonth"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "playersPerMonth")
          }
        }

        public var rating: Int {
          get {
            return resultMap["rating"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "rating")
          }
        }

        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}
