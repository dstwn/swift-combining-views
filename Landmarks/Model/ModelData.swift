//
//  ModelData.swift
//  Landmarks
//
//  Created by Dwi Setiawan on 14/05/21.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json");
func load<T: Decodable>(_ filename:String)->T{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Tidak bisa mencari file")
    }
    do{
        data = try Data(contentsOf: file)
    }catch {
        fatalError("kesalahan")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("Kesalahan")
    }
}
