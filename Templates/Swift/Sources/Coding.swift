import Foundation
import PrchModel

extension JSONDecoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateDecodingStrategy = .formatted(dateFormatter)
  }
}

extension JSONEncoder {
  convenience init(dateFormatter: DateFormatter) {
    self.init()
    dateEncodingStrategy = .formatted(dateFormatter)
  }
}

extension {{ options.name }}API {
  enum Defaults {
    public static let dateEncodingFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
      formatter.locale = Locale(identifier: "en_US_POSIX")
      formatter.calendar = Calendar(identifier: .gregorian)
      return formatter
    }()

    public static let encoder: any Encoder<Data> = JSONEncoder(dateFormatter: Self.dateEncodingFormatter)

    public static let decoder: any Decoder<Data> = JSONDecoder(dateFormatter: Self.dateEncodingFormatter)
  }
}


extension Dictionary : ContentDecodable where Key : Decodable, Value : Decodable {}

extension Dictionary : ContentEncodable where Key : Encodable, Value : Encodable {}