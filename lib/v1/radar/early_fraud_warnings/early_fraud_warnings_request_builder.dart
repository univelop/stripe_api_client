// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './early_fraud_warnings_get_request_body.dart';
import './early_fraud_warnings_get_response.dart';
import './early_fraud_warnings_request_builder_get_query_parameters.dart';
import './item/with_early_fraud_warning_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\early_fraud_warnings
class EarlyFraudWarningsRequestBuilder
    extends BaseRequestBuilder<EarlyFraudWarningsRequestBuilder> {
  /// Gets an item from the ApiSdk.v1.radar.early_fraud_warnings.item collection
  ///  [earlyFraudWarning] Unique identifier of the item
  WithEarlyFraudWarningItemRequestBuilder byEarlyFraudWarning(
      String earlyFraudWarning) {
    var urlTplParams = Map.of(pathParameters);
    urlTplParams.putIfAbsent('early_fraud_warning', () => earlyFraudWarning);
    return WithEarlyFraudWarningItemRequestBuilder(
        urlTplParams, requestAdapter);
  }

  /// Clones the requestbuilder.
  @override
  EarlyFraudWarningsRequestBuilder clone() {
    return EarlyFraudWarningsRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [EarlyFraudWarningsRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EarlyFraudWarningsRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/early_fraud_warnings{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            pathParameters);

  /// Instantiates a new [EarlyFraudWarningsRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  EarlyFraudWarningsRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/early_fraud_warnings{?charge*,created*,ending_before*,expand*,limit*,payment_intent*,starting_after*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Returns a list of early fraud warnings.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<EarlyFraudWarningsGetResponse?> getAsync(
      EarlyFraudWarningsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  EarlyFraudWarningsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<EarlyFraudWarningsGetResponse>(
        requestInfo,
        EarlyFraudWarningsGetResponse.createFromDiscriminatorValue,
        errorMapping);
  }

  /// <p>Returns a list of early fraud warnings.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      EarlyFraudWarningsGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  EarlyFraudWarningsRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo.configure<EarlyFraudWarningsRequestBuilderGetQueryParameters>(
        requestConfiguration,
        () => EarlyFraudWarningsRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
