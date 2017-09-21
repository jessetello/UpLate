//
//  UpLate.swift
//  
//
//  Created by Jesse Tello Jr. on 9/20/17.
//
//

import Foundation

@objc(UpLate) class UpLate : CDVPlugin {
    @objc(echo:)
    func echo(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(
            status: CDVCommandStatus_ERROR
        )
        let msg = command.arguments[0] as? String ?? ""
        if msg.characters.count > 0 {
            let toastController: UIAlertController =
                UIAlertController(
                    title: "",
                    message: msg,
                    preferredStyle: .alert
            )
            self.viewController?.present(
                toastController,
                animated: true,
                completion: nil
            )
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                toastController.dismiss(
                    animated: true,
                    completion: nil
                )
            }
            pluginResult = CDVPluginResult(
                status: CDVCommandStatus_OK,
                messageAs: msg
            )
        }
        self.commandDelegate!.send(
            pluginResult,
            callbackId: command.callbackId
        )
    }
}
