**CLASS**

# `GetEcommerceStoresIdOrders.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `path`

```swift
override public var path: String
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(fields:excludeFields:count:offset:storeId:customerId:hasOutreach:campaignId:outreachId:)`

```swift
public convenience init(fields: [String]? = nil, excludeFields: [String]? = nil, count: Int? = nil, offset: Int? = nil, storeId: String, customerId: String? = nil, hasOutreach: Bool? = nil, campaignId: String? = nil, outreachId: String? = nil)
```

convenience initialiser so an Option doesn't have to be created