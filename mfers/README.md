# mfers

https://twitter.com/sartoshi_nft

At time of writing URIs point to:

`ipfs://QmWiQE65tmpYzcokCheQmng2DCM33DEhjXcPB6PanwpAZo/<index>`

Images are all unique IPFS hashes, not a folder, need to get image key out of each index.

Pin above hash then do something like:
```bash
for i in {0..10020}
do
    ipfs cat QmWiQE65tmpYzcokCheQmng2DCM33DEhjXcPB6PanwpAZo/${i} | jq '.image'
done
```

```powershell
$HASHES = for ($i=0; $i -lt 10021; $i++) {
    $(ipfs cat QmWiQE65tmpYzcokCheQmng2DCM33DEhjXcPB6PanwpAZo/$i | ConvertFrom-JSON).image
}
```

## pin hashes:
```
QmWiQE65tmpYzcokCheQmng2DCM33DEhjXcPB6PanwpAZo
```
