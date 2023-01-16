//
//  age.swift
//  
//
//  Created by Fahad Zaheer on 16/01/2023.
//

import PostgresClientKit


let connectionDict = [String: String]()



class Age{
    var connection:Connection?;
    var graphName:String;
    
    init(){
        self.connection = nil;
        self.graphName = "";
    }
    
    
    func connect(connectionParam:[String:Any], graph:String){
        var configuration = PostgresClientKit.ConnectionConfiguration()
        configuration.host = connectionParam["host"] as? String ?? "localhost"
        configuration.port = connectionParam["port"] as? Int ?? 5432
        configuration.user = connectionParam["user"] as? String ?? "postgres"
        configuration.credential = .scramSHA256(password:connectionParam["password"] as? String ?? "")
        configuration.database = connectionParam["dbname"] as? String ?? "postgres"
    }
    
    
    
}
