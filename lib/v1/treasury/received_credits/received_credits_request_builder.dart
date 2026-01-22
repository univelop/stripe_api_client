// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './item/received_credits_item_request_builder.dart';
import './received_credits_get_request_body.dart';
import './received_credits_get_response.dart';
import './received_credits_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\treasury\received_credits
class ReceivedCreditsRequestBuilder
    extends BaseRequestBuilder<ReceivedCreditsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.treasury.received_credits.item collection
  ///  [id] Unique identifier of the item
  ReceivedCreditsItemRequestBuilder byId(String id) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('id', () => id);
    return ReceivedCreditsItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ReceivedCreditsRequestBuilder clone() {
    return ReceivedCreditsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ReceivedCreditsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedCreditsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_credits?financial_account={financial_account}{&ending_before*,expand*,limit*,linked_flows*,starting_after*,status*}",
            pathParameters);

  /// Instantiates a new [ReceivedCreditsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ReceivedCreditsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/treasury/received_credits?financial_account={financial_account}{&ending_before*,expand*,limit*,linked_flows*,starting_after*,status*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of ReceivedCredits.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ReceivedCreditsGetResponse?> getAsync(
      ReceivedCreditsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedCreditsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ReceivedCreditsGetResponse>(requestInfo,
        ReceivedCreditsGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of ReceivedCredits.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ReceivedCreditsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ReceivedCreditsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ReceivedCreditsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ReceivedCreditsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
