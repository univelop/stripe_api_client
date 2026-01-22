// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/external_accounts_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\external_accounts
class ExternalAccountsRequestBuilder
    extends BaseRequestBuilder<ExternalAccountsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.external_accounts.item collection
  ///  [id] Unique identifier of the item
  ExternalAccountsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return ExternalAccountsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ExternalAccountsRequestBuilder clone() {
    return ExternalAccountsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ExternalAccountsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter, "{+baseurl}/v1/external_accounts", pathParameters);

  /// Instantiates a new [ExternalAccountsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ExternalAccountsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/external_accounts",
            {RequestInformation.rawUrlKey: rawUrl});
}
