//
// -----------------------------------------------
// Project: GeneralDB
// Created on 25.11.24 by Peter Bien
// File: protokoll_LastModifiedTrackable.swift
//
// Mail: (peter.bien@gmx.de)
// -----------------------------------------------

// Copyright © 2024 Peter Bien. All rights reserved.


import SwiftData
import Foundation
/*
/// Protokoll, das 'lastModified' verlangt
protocol LastModifiedTrackable {
    var lastModified: Date { get set }
}

/// Generische Methode um Änderungen an Modellen asynchron zu protokollieren
func updateModel<T: LastModifiedTrackable>(
    _ model: T,
    changes: (inout T) -> Void,
    context: ModelContext
) async throws {
    var mutableModel = model
    changes(&mutableModel)
    mutableModel.lastModified = Date() // Zeitstempel aktualisieren
    try await context.save() // Kontext asynchron speichern
}
*/
