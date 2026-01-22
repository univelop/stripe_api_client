// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/issuing/settlement.dart';
import './item/with_settlement_item_request_builder.dart';
import './settlements_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\issuing\settlements
class SettlementsRequestBuilder
    extends BaseRequestBuilder<SettlementsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.test_helpers.issuing.settlements.item collection
  ///  [settlement] The settlement token to mark as complete.
  WithSettlementItemRequestBuilder bySettlement(String settlement) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('settlement', () => settlement);
    return WithSettlementItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  SettlementsRequestBuilder clone() {
    return SettlementsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [SettlementsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettlementsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/settlements",
            pathParameters);

  /// Instantiates a new [SettlementsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  SettlementsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/test_helpers/issuing/settlements",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Allows the user to create an Issuing settlement.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Settlement?> postAsync(SettlementsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Settlement>(
        requestInfo, Settlement.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Allows the user to create an Issuing settlement.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(SettlementsPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.post,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DefaultQueryParameters>(
        requestConfiguration, () => DefaultQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
