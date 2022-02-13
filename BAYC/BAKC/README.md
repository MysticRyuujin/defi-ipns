# Bored Ape Kennel Club

https://boredapeyachtclub.com/#/kennel-club

There's no "provenance" page / file yet, but the hashes can be obtained here:

`ipfs://QmZ72roeESQ7wvTRYG1H2u1Smq9R6GKKdcCHVQxhf1EDxY`

This will download a folder with files named 0 - 9999 inside. Each file contains the image hash of that index

```
$ ipfs get bafybeie76n4eyyibvtzf45tt7xbnyd3jziwtdrgzr3rhcf57q4376yxgru

$ cat QmZ72roeESQ7wvTRYG1H2u1Smq9R6GKKdcCHVQxhf1EDxY\0 | jq '.image'
ipfs://QmQwDeBdCMgvLQLgT3KD2W8eF5ms7srBZzoTmUnF8HaeUC
```

You can pin all the hashes by getting the hash from the image key
`cat QmZ72roeESQ7wvTRYG1H2u1Smq9R6GKKdcCHVQxhf1EDxY/* | jq '.image'`
