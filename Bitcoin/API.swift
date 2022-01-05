//
//  API.swift
//  Bitcoin
//
//  Created by 髙橋　竜治 on 2022/01/05.
//

import UIKit

struct BTCAPI {
    static func getTotal(completion: @escaping (BTCInfo.Total) -> Void) {
        let url = URL(string: "https://api.coin.z.com/public/v1/ticker?symbol=BTC")
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request) { (data, request, error) in
            if error != nil {
                print("error:\(error!.localizedDescription)")
            }
            if let data = data {
                let result = try! JSONDecoder().decode(BTCInfo.Total.self, from: data)
                completion(result)
            }
        }.resume()
    }
}
