## Ruby dependency injection experiments

Each sub-folder contains own implementation of the similar synthetic functionality

### How to run?

* `ruby ./hardcode/server.rb` - start a fake web app
* open `http://localhost:8080/` to run our action

### Expectations

Initial behavior

```
» ruby ./server.rb                                                                                      130 ↵
...
Start App action
LogStorage::call |> Save to File. Msg: get_by_id via 'jdbc:postgresql://localhost:1234/users'
App |> User: Ievgen
Finish App action
```

Behavior after classes monkey-patching

```
» ruby ./server.rb                                                                                      130 ↵
...
Start App action
LogStorage::call |> Send to Elastic. Msg: get_by_id via 'jdbc:sqlite://skynet:1234/humanoids'
App |> User: Ievgen
Finish App action
```
