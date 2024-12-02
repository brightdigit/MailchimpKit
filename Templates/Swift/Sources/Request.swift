{% include "Includes/Header.stencil" %}

import Foundation
import PrchModel

extension {% if tag %}{{ options.tagPrefix }}{{ tag|upperCamelCase }}{{ options.tagSuffix }}{% endif %} {

  {% if description and summary %}
  {% if description == summary %}
  /** {{ description }} */
  {% else %}
  /**
  {{ summary }}

  {{ description }}
  */
  {% endif %}
  {% else %}
  {% if description %}
  /** {{ description }} */
  {% endif %}
  {% if summary %}
  /** {{ summary }} */
  {% endif %}
  {% endif %}
  public struct {{ type }} : ServiceCall {
    public static var requiresCredentials: Bool {
        return false
    }
    public typealias ServiceAPI = {{options.name}}API

    public static let pathTemplate = "{{ path }}"
    
    public var path: String {
        return Self.pathTemplate{% for param in pathParams %}.replacingOccurrences(of: "{" + "{{ param.value }}" + "}", with: "\(self.{{ param.encodedValue }})"){% endfor %}
    }
    
    public var method : RequestMethod {
        .{{ method|uppercase }}
    }
    
    {% for param in nonBodyParams %}
    
    {% if param.description %}
    /** {{ param.description }} */
    {% endif %}
    public let {{ param.name }}: {{ param.optionalType }}
    {% endfor %}
    
    
    public init({% if body %}body: {{body.optionalType}}{% if nonBodyParams.count > 0 %}, {% endif %}{% endif %}{% for param in nonBodyParams %}{{ param.name }}: {{ param.optionalType }}{% ifnot param.required %} = nil{% endif %}{% ifnot forloop.last %}, {% endif %}{% endfor %}) {
        {% if body %}
        self.body = body
        {% endif %}
        {% for param in nonBodyParams %}
        self.{{ param.name }} = {{ param.name }}
        {% endfor %}
    }
    
    
    {% if queryParams %}
    public var parameters: [String : String] {
        var params: [String: String] = [:]
        {% for param in queryParams %}
        {% if param.optional %}
        if let {{ param.name }} = self.{{ param.encodedValue }} {
          params["{{ param.value }}"] = String(describing: {{ param.name }})
        }
        {% else %}
        params["{{ param.value }}"] = String(describing: self.{{ param.encodedValue }})
        {% endif %}
        {% endfor %}
        return params
    }
    {% else %}
    public var parameters: [String : String] { [:] }
    {% endif %}
    
    {% if headerParams %}
     public var headers: [String: String] {
        var headers: [String: String] = [:]
        {% for param in headerParams %}
        {% if param.optional %}
        if let {{ param.name }} = self.{{ param.encodedValue }} {
          headers["{{ param.value }}"] = {% if param.type == "String" %}{{ param.name }}{% else %}String(describing: {{ param.name }}){% endif %}
        }
        {% else %}
        headers["{{ param.value }}"] = {% if param.type == "String" %}options.{{ param.encodedValue }}{% else %}String(describing: self.{{ param.encodedValue }}){% endif %}
        {% endif %}
        {% endfor %}
        return headers
    }
    {% else %}
    public var headers: [String : String] { [:] }
    {% endif %}
    
    {% for enum in requestEnums %}
    {% if not enum.isGlobal %}

    {% filter indent:8 %}{% include "Includes/Enum.stencil" enum %}{% endfilter %}
    {% endif %}
    {% endfor %}
    
    public typealias SuccessType = {{ successType|default:"Empty"}}
    public typealias BodyType =  {{ body.optionalType|default:"Empty"}}
    
    {% if body %}
    public let body: {{body.optionalType}}
    {% endif %}
  }
}
