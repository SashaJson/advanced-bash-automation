
In CLI execute:


```bash
echo $PATH
```

Where locate file, example 'grep'

```bash
which grep
```
#First way

Open .bash\_profile

write: 'export PATH="$PATH:~/my-scripts"'

Save and close file.

In CLI execute:

```bash
mkdir -p my-scripts
```
```bash
echo 'echo hello' > my-scripts/hello
```
```bash
chmod +x my-scripts/hello
```
```bash
source .bash\_profile
```
```bash
hello
```
```bash
echo $PATH
```
#Second way

```bash
echo 'echo hello2' > hello2
```
Check where you
```bash
pwd
```
```bash
chmod +x hello2
```
```bash
echo $PATH
```
Create link
```bash
ln -s ~/hello2 /usr/local/bin
```
```bash
hello2
```
