**STRUCT**

# `Campaign.ReportSummary`

```swift
public struct ReportSummary: Model
```

For sent campaigns, a summary of opens, clicks, and e-commerce data.

## Properties
### `clickRate`

```swift
public var clickRate: Double?
```

The number of unique clicks divided by the total number of successful deliveries.

### `clicks`

```swift
public var clicks: Int?
```

The total number of clicks for an campaign.

### `ecommerce`

```swift
public var ecommerce: Ecommerce?
```

E-Commerce stats for a campaign.

### `openRate`

```swift
public var openRate: Double?
```

The number of unique opens divided by the total number of successful deliveries.

### `opens`

```swift
public var opens: Int?
```

The total number of opens for a campaign.

### `subscriberClicks`

```swift
public var subscriberClicks: Int?
```

The number of unique clicks.

### `uniqueOpens`

```swift
public var uniqueOpens: Int?
```

The number of unique opens.

## Methods
### `init(clickRate:clicks:ecommerce:openRate:opens:subscriberClicks:uniqueOpens:)`

```swift
public init(clickRate: Double? = nil, clicks: Int? = nil, ecommerce: Ecommerce? = nil, openRate: Double? = nil, opens: Int? = nil, subscriberClicks: Int? = nil, uniqueOpens: Int? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |