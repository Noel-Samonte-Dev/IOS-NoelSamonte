//
//  ButtonPageVIewModel.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import Foundation
import CoreData

class AppViewModel: ObservableObject {
    @Published var button_logs: [ButtonLogsEntity] = []
    let model: NSPersistentContainer
    
    init() {
        model = NSPersistentContainer(name: "ButtonLogsModel")
        model.loadPersistentStores { description, error in
            if let error = error {
                print(error)
            } 
        }
        
        getButtonLogs()
    }
    
    func getButtonLogs() {
        let request = NSFetchRequest<ButtonLogsEntity>(entityName: "ButtonLogsEntity")
        do {
            button_logs = try model.viewContext.fetch(request)
        } catch {print(error)}
    }
    
    func addButtonLogs(button_id: String) {
        let request = ButtonLogsEntity(context: model.viewContext)
        request.button_id = button_id
        request.created_at = timeStamp()
        saveData()
    }
    
    func saveData() {
        do {
            try model.viewContext.save()
            getButtonLogs()
        } catch {print(error)}
    }
    
    private func timeStamp() -> String {
        let date = Date()
        return date.dateFormatter(format: "MM/dd/yyyy h:mm aa")
    }
    
    @Published var toast_message = ""
    @Published var show_toast_message = false
}
