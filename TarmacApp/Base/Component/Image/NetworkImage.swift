//
//  network_image.swift
//  SIM App
//
//  Created by Rajan Maharjan on 21/05/2024.
//

import SwiftUI




// View to display an image from a network URL
struct NetworkImage : View {
    
    let width: CGFloat // Width of the image frame
    let height: CGFloat // Height of the image frame
    @ObservedObject var imageLoader: ImageLoaderAndCache // ObservedObject to manage image loading and caching
    
    // Initializer for NetworkImage
    init(imageUrl: String , width: CGFloat = .infinity , height : CGFloat = 300, cornerRadius : CGFloat = 20) {
        imageLoader = ImageLoaderAndCache(imageURL: imageUrl) // Initialize the image loader with the provided URL
        self.width = width
        self.height = height
        
    }
    
    // Body of the view
    var body: some View{
        Image(uiImage: UIImage(data: self.imageLoader.imageData) ?? UIImage()) // Display the image, defaulting to an empty image if data is nil
            .resizable() // Make the image resizable
            .frame(width: width, height: height) // Set the frame size
        
            
            // Add padding around the image
    }
}

// Preview for NetworkImage
struct NetworkImage_Previews: PreviewProvider {
    static var previews: some View {
        NetworkImage(imageUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")
    }
}

// Class to handle image loading and caching
class ImageLoaderAndCache: ObservableObject {
    
    @Published var imageData = Data() // Published property to store image data
    
    // Initializer for ImageLoaderAndCache
    init(imageURL: String) {
        let cache = URLCache.shared // Shared URL cache
        let request = URLRequest(url: URL(string: imageURL)!, cachePolicy: URLRequest.CachePolicy.returnCacheDataElseLoad, timeoutInterval: 60.0) // URL request with caching policy
        
        // Check if the image is already cached
        if let data = cache.cachedResponse(for: request)?.data {
            self.imageData = data // Use cached data
        } else {
            // Download the image from the internet
            URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                if let data = data, let response = response {
                    let cachedData = CachedURLResponse(response: response, data: data) // Create cached response
                    cache.storeCachedResponse(cachedData, for: request) // Store response in cache
                    DispatchQueue.main.async {
                        print("downloaded from internet")
                        self.imageData = data // Update image data on the main thread
                    }
                }
            }).resume() // Start the data task
        }
    }
}

