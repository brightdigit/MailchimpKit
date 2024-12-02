import Foundation
import PrchModel

public class SpinetailAPI: API {
  private let apiKey: String
  private let dc: String

  public init?(apiKey: String) {
    self.apiKey = apiKey
    let apiKeyComponents = apiKey.components(separatedBy: "-")

    guard let dc = apiKeyComponents.last, apiKeyComponents.count == 2 else {
      return nil
    }

    self.dc = dc

    guard let baseURLComponents = URLComponents(string: "https://\(dc).api.mailchimp.com/3.0") else {
      return nil
    }
    self.baseURLComponents = baseURLComponents
  }

  public let baseURLComponents: URLComponents

  public var headers: [String: String] {
    [
      "Authorization": "anystring \(apiKey)",
      "Content-type": "application/json; charset=utf-8"
    ]
  }

  public var encoder: any Encoder<Data> {
    Defaults.encoder
  }

  public var decoder: any Decoder<Data> {
    Defaults.decoder
  }

  public typealias RequestDataType = Data

  public typealias ResponseDataType = Data
}
