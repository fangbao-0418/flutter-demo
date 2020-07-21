# my_flutter

A new flutter module project.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.dev/).

## Json_model
File: jsons/user.json
```
{
  "name":"wendux",
  "father":"$user", //Other class model
  "friends":"$[]user", // Array  
  "keywords":"$[]String", // Array
  "age":20
}
```
Run `flutter packages pub run json_model`, then you'll see the generated json file under lib/models/ dir:

指定src/dist，默认src=jsons，dist=lib/models

```
pub run json_model src=json_files  dist=data # will save in lib/data dir
```