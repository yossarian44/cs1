module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homicides, suicides, unintentional, other deaths

data gunrow = mkGunrow country Int Int Int Int

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austrl: gunrow
austrl = mkGunrow Australia 11 62 5 8

aus: gunrow
aus = mkGunrow Austria 18 268 1 8

hondr: gunrow
hondr = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Int
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Int
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Int
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Int
otherPer10M (mkGunrow c h s u o) = o

listgunrow: list gunrow
listgunrow = (cons argen (cons austrl (cons aus (cons hondr (cons usa nil)))))
