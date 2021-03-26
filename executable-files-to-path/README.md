
In CLI execute:


```
echo $PATH
```

Where locate file, example 'grep'

```
which grep
```
#First way

Open .bash\_profile

write: 'export PATH="$PATH:~/my-scripts"'

Save and close file.

In CLI execute:

```
mkdir -p my-scripts
```
```
echo 'echo hello' > my-scripts/hello
```
```
chmod +x my-scripts/hello
```
```
source .bash\_profile
```
```
hello
```
```
echo $PATH
```
#Second way

```
echo 'echo hello2' > hello2
```
Check where you
```
pwd
```
```
chmod +x hello2
```
```
echo $PATH
```
Create link
```
ln -s ~/hello2 /usr/local/bin
```
```
hello2
```
