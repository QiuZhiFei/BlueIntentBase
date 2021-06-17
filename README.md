# BlueIntentBase

[![CI Status](https://travis-ci.com/QiuZhiFei/BlueIntentBase.svg?branch=master)](https://travis-ci.com/qiuzhifei/BlueIntentBase)
[![Version](https://img.shields.io/cocoapods/v/BlueIntentBase.svg?style=flat)](https://cocoapods.org/pods/BlueIntentBase)
[![License](https://img.shields.io/cocoapods/l/BlueIntentBase)](https://github.com/qiuzhifei/BlueIntentBase/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/BlueIntentBase.svg?style=flat)](https://cocoapods.org/pods/BlueIntentBase)

Use `BlueIntentExtension` proxy as customization point for constrained protocol extensions.

- Extend BlueIntentExtension protocol with constrain on Base
- 参照 kotlin，提供作用域函数 (let, var)，优雅的解包

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
add extension
```
extension String: BlueIntentCompatible { }

extension BlueIntentExtension where Base == String {
  public var length: Int {
    return base.count
  }
}

let string = "test"
string.bi.length // 4
```
scope functions
```
var string: String?
string = "test"

// 解包
string?.bi.let({ it in
  // it 为解包值
  XCTAssert(it == string)
})

// 解包，并提供新的返回值
let newString = string?.bi.var({ it in
  return "new: \(it)"
})
```

## Manually
```
make
```

## Author

qiuzhifei, qiuzhifei521@gmail.com

## License

BlueIntentBase is available under the MIT license. See the LICENSE file for more info.





