# TYJSONModel
A fast conversion between JSON and Model
一个快速的json转model类库，同时代码简单，注释丰富易于学习，理解。

// 数据测试
----------------------
Benchmark (10000 times):
GHUser          from json    to json    archive
Manually:           60.06      79.88    1270.97
YYModel:           120.13     181.06    1401.02
FastEasyMapping:   479.25     664.03        N/A
JSONModel:        1433.17     772.39    1709.24
Mantle:           2002.58    1082.78    2520.14
MJExtension:       778.89     654.37    1599.54
TYJOSNModel:        331.99     349.98    1460.34
----------------------

----------------------
Benchmark (1000 times):
WeiboStatus     from json    to json    archive
YYModel:           404.44     432.81    1695.76
FastEasyMapping:  1164.87    1130.53        N/A
JSONModel:        3161.37    1359.50    2082.25
Mantle:           3492.90    2227.65    3393.77
MJExtension:      2852.42      error    2297.53
TYJSONModel:        750.09     670.03    1828.08
----------------------

----------------------
The property is NSString, but the json value is number:
YYModel:         ✅ property is NSTaggedPointerString
FastEasyMapping: 🚫 property is __NSCFNumber
JSONModel:       ✅ property is NSTaggedPointerString
Mantle:          ⚠️ model is nil
MJExtension:     ✅ property is NSTaggedPointerString
TYJSONModel:     ✅ property is NSTaggedPointerString

----------------------
The property is int, but the json value is string:
YYModel:         ✅ property is 100
Mantle:          ⚠️ model is nil
MJExtension:     ✅ property is 100
TYJSONModel:     ✅ property is 100
----------------------
The property is NSDate, and the json value is string:
YYModel:         ✅ property is __NSTaggedDate
FastEasyMapping: 🚫 property is __NSCFString
JSONModel:       ✅ property is __NSTaggedDate
Mantle:          ⚠️ model is nil
MJExtension:     ⚠️ property is nil
TYJSONModel:     ⚠️ property is nil

----------------------
The property is NSValue, and the json value is string:
YYModel:         ✅ property is nil
FastEasyMapping: 🚫 property is __NSCFString
Mantle:          ⚠️ model is nil
MJExtension:     ✅ property is nil
TYJSONModel:     ✅ property is nil


