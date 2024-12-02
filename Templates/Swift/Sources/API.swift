{% include "Includes/Header.stencil" %}

import Foundation
import PrchModel

{% if options.modelProtocol %}
public protocol {{ options.modelProtocol }}: Codable, Equatable {}
{% endif %}

{% for type, typealias in options.typeAliases %}
public typealias {{ type }} = {{ typealias }}
{% endfor %}

{% for tag in tags %}
public enum {{ options.tagPrefix }}{{ tag | upperCamelCase }} {{ options.tagSuffix }} {}
{% endfor %}

public class {{ options.name }}API: API {
  public init(baseURLComponents: URLComponents) {
    self.baseURLComponents = baseURLComponents
  }

  public let baseURLComponents: URLComponents

  public var headers: [String: String] = [:]

  public var encoder: any Encoder<Data> {
    Defaults.encoder
  }

  public var decoder: any Decoder<Data> {
    Defaults.decoder
  }

  public typealias RequestDataType = Data

  public typealias ResponseDataType = Data
  
  
  {% if servers %}
  
  public enum Server {
      {% for server in servers %}
      
      {% if server.description %}
      /** {{ server.description }} **/
      {% endif %}
      {% if server.variables %}
      public static func {{ server.name }}({% for variable in server.variables %}{{ variable.name }}: String = "{{ variable.defaultValue }}"{% ifnot forloop.last %}, {% endif %}{% endfor %}) -> String {
          var url = "{{ server.url }}"
          {% for variable in server.variables %}
          url = url.replacingOccurrences(of: {{'"{'}}{{variable.name}}{{'}"'}}, with: {{variable.name}})
          {% endfor %}
          return url
      }
      {% else %}
      public static let {{ server.name }} = "{{ server.url }}"
      {% endif %}
      {% endfor %}
  }
  {% else %}
  
  // No servers defined in swagger. Documentation for adding them: https://swagger.io/specification/#schema
  {% endif %}

}
