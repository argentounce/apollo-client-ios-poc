//
//  ViewController.swift
//  pmgraphqltest
//
//  Created by Miguel Alejandro Hernández Fierro on 20/04/22.
//

import UIKit
import Apollo

class ViewController: UIViewController {
    
    let apollo = Network.shared.apollo

    override func viewDidLoad() {
        super.viewDidLoad()
        
        apollo.fetch(query: ParentsQuery()) { result in
            
            guard let data = try? result.get().data else { return }
            
            guard let serialized = try? JSONSerialization.data(withJSONObject: data.jsonObject, options: .prettyPrinted),
                  let stringParsed = String(data: serialized, encoding: .utf8)
            else { return }
            
            print(stringParsed)
            
            let parents = result.map { parentsQuery in
                parentsQuery.data?.parents
            }
            
            print(parents)
            
        }
        
        // Do any additional setup after loading the view.
    }


}

