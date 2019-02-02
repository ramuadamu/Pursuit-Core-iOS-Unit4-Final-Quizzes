//
//  QuizzesDataManager.swift
//  Quizzes
//
//  Created by Ramu on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class QuizzesDataManager {
private init() {}
    
private static let filename = "Quizzes.plist"

private static var quizzes = [QuizzesModel]()

static func getQuiz() -> [QuizzesModel] {
    let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename).path
    if FileManager.default.fileExists(atPath: path) {
        if let data = FileManager.default.contents(atPath: path) {
            do {
                quizzes = try PropertyListDecoder().decode([QuizzesModel].self, from: data)
            } catch {
                print("property list decoding error: \(error)")
            }
        } else {
            print("data is nil")
        }
    } else {
        print("\(filename) does not exist")
    }
    return quizzes
}
    static public func saveToDocumentDirectory(newQuizzes: QuizzesModel) -> (success: Bool, error: Error?) {
        var quiz = getQuiz()
        quiz.append(newQuizzes)
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename)
        do {
           let data = try PropertyListEncoder().encode(newQuizzes)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
            return (false, error)
        }
        return (true, nil)
    }
    
    static func delete(newQuiz: QuizzesModel, atIndex index: Int) {
        var newQuizzes = getQuiz()
        newQuizzes.remove(at: index)
        
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(newQuizzes)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
    }
    
}
