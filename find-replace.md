This is a quick and dirty command to find and replace the names of chromosomes to numbers (or really to find and replace anything) with a tab-separated file with the old & new names.

Ex replacement.text:
oldname  newname

```
while IFS=$'\t' read -r find replace; do
    perl -i.bak -pe "s/\b\Q$find\E\b/$replace/g" original.txt
done < replacement.txt
cp original.txt new.txt
```
