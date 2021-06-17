# BlueIntentBase

[![CI Status](https://travis-ci.com/QiuZhiFei/BlueIntentBase.svg?branch=master)](https://travis-ci.com/qiuzhifei/BlueIntentBase)
[![Version](https://img.shields.io/cocoapods/v/BlueIntentBase.svg?style=flat)](https://cocoapods.org/pods/BlueIntentBase)
[![License](https://img.shields.io/cocoapods/l/BlueIntentBase)](https://github.com/qiuzhifei/BlueIntentBase/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/BlueIntentBase.svg?style=flat)](https://cocoapods.org/pods/BlueIntentBase)

BlueIntentBase is a framework for for bi namespace in swift.

- 提供 swift 命名空间 bi
- 参照 kotlin，提供作用域函数 let, var

## Requirements

## Installation

BlueIntentBase is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BlueIntentBase'
```

## Usage
```
import BlueIntentBase
```
提供扩展
```

```
Custom
```
let vc = UIViewController()
vc.bi.transitioningData = .present.bi.var({ data in
    var data = data
    data.edgeTypes = [.leftToRight, .topToBottom]
    data.maskColor = UIColor.black.withAlphaComponent(0.15)
    data.transitionDuration = 0.5
    return data
})
self.present(vc, animated: true, completion: nil)
```

## Manually
```
make
```

## Author

qiuzhifei, qiuzhifei521@gmail.com

## License

BlueIntentBase is available under the MIT license. See the LICENSE file for more info.





