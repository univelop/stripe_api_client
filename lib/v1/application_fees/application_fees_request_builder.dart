// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import './application_fees_get_request_body.dart';
import './application_fees_get_response.dart';
import './application_fees_request_builder_get_query_parameters.dart';
import './item/fee_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\application_fees
class ApplicationFeesRequestBuilder
    extends BaseRequestBuilder<ApplicationFeesRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.application_fees.item collection
  ///  [feeId] Unique identifier of the item
  FeeItemRequestBuilder byFeeId(String feeId) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('fee%2Did', () => feeId);
    return FeeItemRequestBuilder(urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  ApplicationFeesRequestBuilder clone() {
    return ApplicationFeesRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ApplicationFeesRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplicationFeesRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees{?charge*,created*,ending_before*,expand*,limit*,starting_after*}",
            pathParameters);

  /// Instantiates a new [ApplicationFeesRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ApplicationFeesRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees{?charge*,created*,ending_before*,expand*,limit*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of application fees you’ve previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ApplicationFeesGetResponse?> getAsync(
      ApplicationFeesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ApplicationFeesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ApplicationFeesGetResponse>(requestInfo,
        ApplicationFeesGetResponse.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Returns a list of application fees you’ve previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(ApplicationFeesGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  ApplicationFeesRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<ApplicationFeesRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => ApplicationFeesRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
