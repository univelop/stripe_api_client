// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './disputes_get_request_body.dart';
import './disputes_get_response.dart';
import './disputes_request_builder_get_query_parameters.dart';
import './item/with_dispute_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\disputes
class DisputesRequestBuilder
    extends BaseRequestBuilder<DisputesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.disputes.item collection
  ///  [dispute] Unique identifier of the item
  WithDisputeItemRequestBuilder byDispute(String dispute) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('dispute', () => dispute);
    return WithDisputeItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  DisputesRequestBuilder clone() {
    return DisputesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [DisputesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DisputesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/disputes{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            pathParameters);

  /// Instantiates a new [DisputesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  DisputesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/disputes{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of your disputes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<DisputesGetResponse?> getAsync(DisputesGetRequestBody body,
      [void Function(
              RequestConfiguration<DisputesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<DisputesGetResponse>(requestInfo,
        DisputesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of your disputes.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(DisputesGetRequestBody body,
      [void Function(
              RequestConfiguration<DisputesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<DisputesRequestBuilderGetQueryParameters>(
        requestConfiguration, () => DisputesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
