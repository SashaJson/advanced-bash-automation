In CLI execute:
```bash
echo ${HOME}
```
```bash
echo $HOME
```
Also example with 'USER':
```bash
echo $USER_$(date '+%Y')
```
```bash
echo ${USER}_$(date '+%Y')
```

With default parameter:
```bash
echo ${str:-'default'}
```
```bash
echo ${USER:-'default'}
```

Create 'counter-files.sh' and open him (i am use vim).
Variable for directory where need count files.
```bash
dir=${1:-$PWD}
find "$dir" -maxdepth 1 -type f | wc -l
```
Save file and execute:
```bash
./counter-files.sh
```
```bash
./counter-files.sh path
```

