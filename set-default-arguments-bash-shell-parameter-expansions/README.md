In CLI execute:
```
echo ${HOME}
```
```
echo $HOME
```
Also example with 'USER':
```
echo $USER_$(date '+%Y')
```
```
echo ${USER}_$(date '+%Y')
```

With default parameter:
```
echo ${str:-'default'}
```
```
echo ${USER:-'default'}
```

Create 'counter-files.sh' and open him (i am use vim).
Variable for directory where need count files.
```
dir=${1:-$PWD}
find "$dir" -maxdepth 1 -type f | wc -l
```
Save file and execute:
```
./counter-files.sh
```
```
./counter-files.sh path
```

