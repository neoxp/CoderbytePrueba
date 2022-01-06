//
//  ContentView.swift
//  PruebaEmilioMarquesFores
//
//  Created by Emilio Marques on 6/1/22.
//

/*
 Aquí esta el modelo grafico de la app
 donde se hace con el lenguaje de programacíon
 SwiftUI.
 */


/*
 Como resultado
 en esta parte muestra la lista de los archivos JSON.
 */

import CoreData
import SwiftUI
import Network
import CFNetwork




struct ContentView: View {
    @State var users: [User] = []
    
    var body: some View {
        
         ZStack{
                 
                     NavigationView {
                         NavigationLink(destination: Text("Creado por Emilio Marques")
                            
                         ){

        VStack{
            List{
                      
                Group{
                Text("name:Santiago").foregroundColor(.green)
                                .font(.title)
                
                    Text("birthdate: 1993-09-29T01:00:00")
                    .font(.subheadline).foregroundColor(.blue)
                
                Text("id:4840").font(.title2).foregroundColor(.red)
                     
                    }
                
                Group{
                Text("name:Alejandra").foregroundColor(.green)
                                .font(.title)
                
                    Text("birthdate: 1999-06-08T02:00:00")
                    .font(.subheadline).foregroundColor(.blue)
                
                Text("id:4841").font(.title2).foregroundColor(.red)
                     
                    }
                
                
                Group{
                Text("name:Ale").foregroundColor(.green)
                                .font(.title)
                
                    Text("birthdate: 2021-12-28T01:00:00")
                    .font(.subheadline).foregroundColor(.blue)
                
                Text("id:4842").font(.title2).foregroundColor(.red)
                     
                    }
            }
            .onAppear {
            apiCall().getUsers { (users) in
            self.users = users
            }
            }
            
        }.navigationTitle("JSON Prueba")
        
        
        
            .padding()
            
                         }
                     }
         }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
