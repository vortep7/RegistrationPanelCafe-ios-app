

import Foundation
import Alamofire
import UIKit
class NetworkImageService {
    static let shared = NetworkImageService() //creating singlton
    private init() {}
    
    func createURLAdress(tunnel: String, serverName: String, endPoint: String) -> URL? {
        var result = tunnel + serverName + endPoint
        let url = URL(string: result)
        
        return url
    }
    
    //getting url, download Imagw
    public func downloadImage(URL: URL?, completion:@escaping (UIImage?) -> () ) {
        guard let url = URL else {
            completion(nil)
            return
        }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else
            { completion(nil)
                return
            }
            completion(image)
        }.resume()
        
    }
    
    
    
}

enum NetworkImageServiceErrors: Error {
    case badResponse, invalidData, badURL
}
