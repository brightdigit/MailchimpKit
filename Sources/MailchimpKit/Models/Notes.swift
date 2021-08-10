//
// Notes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The most recent Note added about this member. */

public struct Notes: Codable {

    /** The note id. */
    public var noteId: Int?
    /** The date and time the note was created in ISO 8601 format. */
    public var createdAt: Date?
    /** The author of the note. */
    public var createdBy: String?
    /** The content of the note. */
    public var note: String?

    public init(noteId: Int? = nil, createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil) {
        self.noteId = noteId
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.note = note
    }

    public enum CodingKeys: String, CodingKey { 
        case noteId = "note_id"
        case createdAt = "created_at"
        case createdBy = "created_by"
        case note
    }

}
