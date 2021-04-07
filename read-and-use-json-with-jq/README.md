In CLI execute:
```bash
echo '{"foo":123}' | jq '.foo'
```
```bash
echo '{"a": {"b":123}}' | jq '.a.b'
```
```bash
echo '[1,2,3]' | jq '.[]'
```
```bash
echo '[{"id":1}, {"id":2}]' | jq '.[].id'
```
