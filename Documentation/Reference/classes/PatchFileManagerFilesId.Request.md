**CLASS**

# `PatchFileManagerFilesId.Request`

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

### `init(fileId:body:)`

```swift
public convenience init(fileId: String, body: Body)
```

convenience initialiser so an Option doesn't have to be created