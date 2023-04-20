// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract note {
    uint256 public noteCount = 0;
    //  constructor() public {
    // }

    struct Note {
        uint256 id;
        string title;
        string discription;
    }

    mapping(uint256 => Note) public notes;

    event NoteCreated(uint256 id, string title, string discription);
    event NoteDeleted(uint256 id);

    function createNote(
        string memory _title,
        string memory _discription
    ) public {
        notes[noteCount] = Note(noteCount, _title, _discription);
        emit NoteCreated(noteCount, _title, _discription);
        noteCount++;
    }

    function deleteNote(uint256 _id) public {
        delete notes[_id];
        emit NoteDeleted(_id);
        noteCount--;
    }
}
