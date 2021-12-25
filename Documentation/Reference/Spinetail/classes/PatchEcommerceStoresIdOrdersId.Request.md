**CLASS**

# `PatchEcommerceStoresIdOrdersId.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `body`

```swift
public var body: Body
```

### `path`

```swift
override public var path: String
```

## Methods
### `init(body:options:encoder:)`

```swift
public init(body: Body, options: Options, encoder: RequestEncoder? = nil)
```

### `init(storeId:orderId:body:)`

```swift
public convenience init(storeId: String, orderId: String, body: Body)
```

convenience initialiser so an Option doesn't have to be created