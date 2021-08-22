**ENUM**

# `DeleteEcommerceStoresId.Response`

```swift
public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible
```

## Cases
### `status204(_:)`

```swift
case status204([String: CodableAny])
```

Empty Response

### `defaultResponse(statusCode:_:)`

```swift
case defaultResponse(statusCode: Int, DefaultResponse)
```

An error generated by the Mailchimp API.

## Properties
### `success`

```swift
public var success: [String: CodableAny]?
```

### `failure`

```swift
public var failure: DefaultResponse?
```

### `responseResult`

```swift
public var responseResult: APIResponseResult<[String: CodableAny], DefaultResponse>
```

either success or failure value. Success is anything in the 200..<300 status code range

### `response`

```swift
public var response: Any
```

### `statusCode`

```swift
public var statusCode: Int
```

### `successful`

```swift
public var successful: Bool
```

### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```

## Methods
### `init(statusCode:data:decoder:)`

```swift
public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws
```