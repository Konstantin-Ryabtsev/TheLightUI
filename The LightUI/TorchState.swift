//
//  TorchState.swift
//  The LightUI
//
//  Created by Konstantin on 14.04.2021.
//

import SwiftUI
import AVFoundation

class TorchState: ObservableObject {
    @Published var isOn: Bool = false {
        didSet {
            toggleTorch(isOn)
        }
    }
    
    private func toggleTorch(_ isOn: Bool) {
        guard let devise = AVCaptureDevice.default(for: .video), devise.hasTorch else { return }
        
        do {
            try devise.lockForConfiguration()
            
            devise.torchMode = isOn ? .on : .off
            
            if isOn {
                try devise.setTorchModeOn(level: AVCaptureDevice.maxAvailableTorchLevel)
            }
            
            devise.unlockForConfiguration()
        } catch {
            print("Error: \\(error)")
        }
    }
}
