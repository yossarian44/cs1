module majorchord

data majorchord = C | G | D | A | E | B | Fs | Db | Ab | Eb | Bb | F

nextCircle: majorchord -> majorchord
nextCircle C = G
nextCircle G = D
nextCircle D = A
nextCircle A = E
nextCircle B = Fs
nextCircle Fs = Db
nextCircle Db = Ab
nextCircle Ab = Eb
nextCircle Eb = Bb
nextCircle Bb = F
nextCircle _ = C
