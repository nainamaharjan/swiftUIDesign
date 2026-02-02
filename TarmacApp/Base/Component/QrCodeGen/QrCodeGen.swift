//
//  qr_code_gen.swift
//  SIM App
//
//  Created by Rajan Maharjan on 22/05/2024.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct QRCodeGen: View {
    let qrText: String
    let height: CGFloat
    let width : CGFloat
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    init(qrText: String , height: CGFloat, width: CGFloat = UIHelper.screenWidth ) {
        self.qrText = qrText
        self.height = height
        self.width = width
    }
    
    var body: some View {
        Image(uiImage: UIImage(data: generateQR(text: qrText)!)!)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: width, maxHeight: height)
    }
    func generateQR(text: String) -> Data? {
        let filter = CIFilter.qrCodeGenerator()
        guard let data = text.data(using: .ascii, allowLossyConversion: false) else { return nil }
        filter.message = data
        guard let ciimage = filter.outputImage else { return nil }
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledCIImage = ciimage.transformed(by: transform)
        let uiimage = UIImage(ciImage: scaledCIImage)
        return uiimage.pngData()!
    }
}

#Preview {
    QRCodeGen(qrText:"Hello World", height: UIHelper.screenHeight/2, width: UIHelper.screenWidth)
}



