
In CLI execute:


```
echo $PATH
```

Where locate file, example 'grep'

```
which grep
```

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

