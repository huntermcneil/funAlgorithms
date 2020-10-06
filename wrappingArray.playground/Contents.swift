import UIKit

var tracks = ["a", "b", "c", "d", "e"]

// for in loop with index
let selectedTrack = tracks[3]
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
    playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

playlist + priorTracks

// 2 line with prefix and suffix
let prefixArray = tracks.prefix(upTo: 3)
let suffixArray = tracks.suffix(from: 3)

suffixArray + prefixArray
