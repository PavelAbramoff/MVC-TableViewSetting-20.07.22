//
//  Model.swift
//  MVC-TableViewSetting-20.07.22
//
//  Created by Pavel Абрамов on 20.07.2022.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingOptionType]
}

enum SettingOptionType {
    case switchCell(model: SettingsSwitchOption)
    case staticCell(model: SettingOption)
}

struct SettingsSwitchOption {
    let title: String
    let iconBackgroundColor: UIColor
    let icon: UIImage?
    let handler: (() -> Void)
    var isOn: Bool
}

struct SettingOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
    
}

struct Model {
    static func configure() -> [Section] {
        return [
            Section(title: "", options: [
                .switchCell(model: SettingsSwitchOption(title: "Airplane Mode", iconBackgroundColor: .red, icon: UIImage(systemName: "airplane.circle"), handler: {
                    print("Airplane Mode")
                }, isOn: true )),
            ]),
            
            Section(title: "General", options: [
                .staticCell(model: SettingOption(title: "Wi-Fi", icon: UIImage(systemName: "speaker.fill"), iconBackgroundColor:
                                                        .systemPink) {
                                                            print("Wi-Fi")
                                                        }),
                .staticCell(model: SettingOption(title: "Bluetooth", icon: UIImage(systemName: "shuffle"), iconBackgroundColor:
                                                        .systemBlue) {
                                                            print("Bluetooth")
                                                        }),
                .staticCell(model:SettingOption(title: "Cellular communication", icon: UIImage(systemName: "phone.connection"), iconBackgroundColor:
                                                        .systemPurple) {
                                                            print("Cellular communication")
                                                        })
                ]),
            
            Section(title: "", options: [
                .switchCell(model:SettingsSwitchOption(title: "Modem mode", iconBackgroundColor:
                        .systemGreen, icon: UIImage(systemName: "personalhotspot"), handler: {
                                                                print("Airplane Mode")
                                                            }, isOn: true )),
                ]),
            
            Section(title: "Information", options: [
                .staticCell(model: SettingOption(title: "Notifications", icon: UIImage(systemName: "speaker.fill"), iconBackgroundColor: .systemPink) {
                    print("Notifications")
                }),
                .staticCell(model: SettingOption(title: "Sounds screen time", icon: UIImage(systemName: "bell"), iconBackgroundColor: .systemRed) {
                    print("Sounds screen time")
                }),
                .staticCell(model:SettingOption(title: "Focusing", icon: UIImage(systemName: "bolt"), iconBackgroundColor: .systemPurple) {
                    
                }),
                .staticCell(model:SettingOption(title: "Screen time", icon: UIImage(systemName: "timer"), iconBackgroundColor: .systemPurple) {
                    
                })
            ]),
            
            Section(title: "Basic", options: [
                .staticCell(model: SettingOption(title: "Basic", icon: UIImage(systemName: "brain"), iconBackgroundColor: .systemGray) {
                    print("Basic")
                }),
                .staticCell(model: SettingOption(title: "Control point", icon: UIImage(systemName: "control"), iconBackgroundColor: .systemGray) {
                    print("Control point")
                }),
                .staticCell(model:SettingOption(title: "Screen and brightness", icon: UIImage(systemName: "bell"), iconBackgroundColor: .systemBlue) {
                    
                }),
                .staticCell(model:SettingOption(title: "Wallpaper", icon: UIImage(systemName: "square.and.arrow.down"), iconBackgroundColor: .systemPurple) {
                    
                })
            ])]
    }
}


