// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class ParentsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Parents {
      parents {
        __typename
        id
        creditCard {
          __typename
          expirationDate
          number
          name
        }
        hasRegisteredStudents
        students
      }
    }
    """

  public let operationName: String = "Parents"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("parents", type: .nonNull(.list(.nonNull(.object(Parent.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(parents: [Parent]) {
      self.init(unsafeResultMap: ["__typename": "Query", "parents": parents.map { (value: Parent) -> ResultMap in value.resultMap }])
    }

    public var parents: [Parent] {
      get {
        return (resultMap["parents"] as! [ResultMap]).map { (value: ResultMap) -> Parent in Parent(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Parent) -> ResultMap in value.resultMap }, forKey: "parents")
      }
    }

    public struct Parent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Parent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("creditCard", type: .nonNull(.object(CreditCard.selections))),
          GraphQLField("hasRegisteredStudents", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("students", type: .list(.nonNull(.scalar(GraphQLID.self)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, creditCard: CreditCard, hasRegisteredStudents: Bool, students: [GraphQLID]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Parent", "id": id, "creditCard": creditCard.resultMap, "hasRegisteredStudents": hasRegisteredStudents, "students": students])
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

      public var creditCard: CreditCard {
        get {
          return CreditCard(unsafeResultMap: resultMap["creditCard"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "creditCard")
        }
      }

      public var hasRegisteredStudents: Bool {
        get {
          return resultMap["hasRegisteredStudents"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "hasRegisteredStudents")
        }
      }

      public var students: [GraphQLID]? {
        get {
          return resultMap["students"] as? [GraphQLID]
        }
        set {
          resultMap.updateValue(newValue, forKey: "students")
        }
      }

      public struct CreditCard: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CreditCard"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("expirationDate", type: .nonNull(.scalar(String.self))),
            GraphQLField("number", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(expirationDate: String, number: String, name: String) {
          self.init(unsafeResultMap: ["__typename": "CreditCard", "expirationDate": expirationDate, "number": number, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var expirationDate: String {
          get {
            return resultMap["expirationDate"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "expirationDate")
          }
        }

        public var number: String {
          get {
            return resultMap["number"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "number")
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
      }
    }
  }
}
