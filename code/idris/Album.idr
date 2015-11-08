module Album

import bool
import relation

|||A record describing an album with its name, the artist, the year, and whether or not I own it

record Album where
  constructor mkAlbum
  name: String
  artist: String
  year: Nat
  own: bool

wall: Album
wall = mkAlbum "The Wall" "Pink Floyd" 1979 false

achtung: Album
achtung = mkAlbum "Achtung Baby" "U2" 1991 true

stranger: Album
stranger = mkAlbum "The Stranger" "Billy Joel" 1977 true

ok: Album
ok = mkAlbum "OK Computer" "Radiohead" 1997 true

races: Album
races = mkAlbum "A Day At The Races" "Queen" 1976 false

sync: Album
sync = mkAlbum "Synchronicity" "The Police" 1983 false
