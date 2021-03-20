//
//  AlunoAPI.swift
//  Agenda
//
//  Created by Elisa Camillo on 19/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import Alamofire

class AlunoAPI: NSObject {
    
    func salvaAlunosNoServidor(params:Array<Dictionary<String, String>>) {
        guard let url = URL(string: "http://localhost:8080/api/aluno/lista") else { return }
        var requisicao = URLRequest(url: url)
        requisicao.httpMethod = "PUT"
        let json = try! JSONSerialization.data(withJSONObject: params, options: [])
        requisicao.httpBody = json
        requisicao.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        Alamofire.request(requisicao)
    
}
}
