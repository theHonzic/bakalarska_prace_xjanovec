//
//  Logger.swift
//  Smart Migration
//
//  Created by Jan Janovec on 11.12.2022.
//

import os.log

final class Logger {
    enum MessageKind {
        case info
        case success
        case error
    }
    
    private init() {}
    static func log(_ message: String, _ kind: MessageKind = .info, _ type: OSLogType = .info) {
            let icon: String
            
            switch kind {
            case .info:
                icon = "ℹ️"
            case .success:
                icon = "✅"
            case .error:
                icon = "🔴"
            }
            
            os_log("%@ %@", type: type, icon, message)
        }
}

