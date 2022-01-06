//
//  apiCall.swift
//  PruebaEmilioMarquesFores
//
//  Created by Emilio Marques on 6/1/22.
//

/*
 Aquí esta los datos y parametros
 del modelo
 de los archivos JSON y la Classe que pide infromacíon al archivo para
 mopstrar los datos en una lista.
 */

import Foundation
import Network
import CFNetwork
import SwiftUI


class apiCall {
    func getUsers(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "https://hello-world.innocv.com/swagger/v1/swagger.json") else { return }
        URLSession.shared.dataTask(with: url) { (Data, _, _) in
            do {
            
                URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data, error == nil else {
                        print(error ?? "Unknown error")
                        return
                    }

                    do {
                        let user = try JSONDecoder().decode([User].self, from: data)
                        DispatchQueue.main.async {
                            apiCall()
                        }
                    } catch let error {
                        print(error)
                    }
                }.resume()
            }
        }
    }
}


