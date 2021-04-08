In CLI execute:
```bash
jq '.dependencies' package.json
```
```bash
jq '.dependencies | keys' package.json
```
```bash
jq '.dependencies | keys | .[]' package.json
```
```bash
jq -r '.dependencies | keys | .[]' package.json
```
Create file 'check-unused-deps.sh' in project.
Insert in file this script:
```bash
for dep in $(jq -r '.dependencies | keys | .[]' package.json);
do
if ! grep "require\(.*dep.*\)" -Rq --exclude-dir="node_modules" .; 
then echo "You can probably remove $dep"
fi
done
```
Make executable our script file:
```bash
chmod +x check-unused-deps.sh
```
And run it:
```
./check-unused-deps.sh
```
