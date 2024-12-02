import Foundation
import Prch
import Spinetail

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

class MailchimpService: Service {
  convenience init?(apiKey: String, session: URLSession = .shared) {
    guard let api = SpinetailAPI(apiKey: apiKey) else {
      return nil
    }

    self.init(api: api, session: session)
  }

  internal init(api: SpinetailAPI, session: URLSession = .shared) {
    self.session = session
    self.api = api
  }

  let session: URLSession

  let api: Spinetail.SpinetailAPI

  typealias SessionType = URLSession

  let authorizationManager: any SessionAuthenticationManager = NullAuthorizationManager<URLSession.AuthorizationType>()

  typealias ServiceAPI = SpinetailAPI
}
