//
//  ViewController.swift
//  nerwica
//
//  Created by  Łukasz Wojtarowicz on 13.02.2018.
//  Copyright © 2018  Łukasz Wojtarowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "pobieram.."
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: jsonUrlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
        guard let data = data  else { return }
                    
        do{
            let data = try JSONDecoder().decode(Post.self, from: data)
            print(data.id, data.name)
            ///////////
            let text = ("ID:\(data.id) Name:\(data.name)")
            //print(text)
            DispatchQueue.main.async{
                self.nameLabel.text = text
            }
            ///////////
            }catch let jsonErr{
            print ("Error serializing json:", jsonErr)
            }
                    
        }.resume()
                
                
    }
}

