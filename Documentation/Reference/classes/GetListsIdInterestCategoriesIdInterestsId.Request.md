**CLASS**

# `GetListsIdInterestCategoriesIdInterestsId.Request`

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

### `init(listId:interestCategoryId:interestId:fields:excludeFields:)`

```swift
public convenience init(listId: String, interestCategoryId: String, interestId: String, fields: [String]? = nil, excludeFields: [String]? = nil)
```

convenience initialiser so an Option doesn't have to be created