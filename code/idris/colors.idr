module colors

import pair
import bool

%default total

data colors = red | green | blue | magenta | yellow | cyan

complement: colors -> colors
complement red = cyan
complement cyan = red
complement green = magenta
complement magenta = green
complement blue = yellow
complement _ = blue

additive: colors -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: colors -> bool
subtractive c = not (additive c)

complements: pair colors colors -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair _ _) = false

mixink: pair colors colors -> colors
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair magenta cyan) = blue


