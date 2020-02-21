//
//  ViewController.swift
//  AESEncryptionTuto
//
//  Created by Tejora on 19/02/20.
//  Copyright © 2020 Tejora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.aesEncryptDecrypt()
    }
    
    func aesEncryptDecrypt() {
        do {
            let aes = try AESEncryptionManager(keyString: "FiugQTgPNwCWUY,VhfmM4cKXTLVFvHFe")

            let stringToEncrypt: String = "Hello this is AES Encryption"
            print("String to encrypt:-  \(stringToEncrypt)")

            let encryptedData: Data = try aes.encrypt(stringToEncrypt)
            print("String encrypted (base64):  \(encryptedData.base64EncodedString())")

            let decryptedData: String = try aes.decrypt(encryptedData)
            print("String decrypted::       \(decryptedData)")

        } catch {
            print("Something went wrong: \(error)")
        }
    }
    
    
    
    /*
    // this function is used when encyption method return data
    func aesEncryptDecrypt() {
        do {
            let aes = try AESEncryptionManager(keyString: "FiugQTgPNwCWUY,VhfmM4cKXTLVFvHFe")

            let stringToEncrypt: String = "Hello this is AES Encryption"
            print("String to encrypt:-  \(stringToEncrypt)")

            let encryptedData: String = try aes.encrypt(stringToEncrypt)
            print("String encrypted (base64):  \(encryptedData)")

            let decryptedData: String = try aes.decrypt(encryptedData)
            print("String decrypted::       \(decryptedData)")

        } catch {
            print("Something went wrong: \(error)")
        }
    } */

}

