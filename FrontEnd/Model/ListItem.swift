import Foundation
import SwiftUI
import CoreLocation

struct ListItem: Hashable, Codable {
    var id: Int
    var name: String
    var type: String
    
    private var imageUri: String
    var image: Image {
        Image(imageUri)
    }
    
    private var coordinates: Coordinates?
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates?.latitude ?? 0.0,
            longitude: coordinates?.longitude ?? 0.0)
    }
    
    init(
        id: Int,
        name: String,
        type: String = "",
        imageUri: String = "",
        coordinates: Coordinates? = nil
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.imageUri = imageUri
        self.coordinates = coordinates ?? nil
    }
}
