// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/radar/early_fraud_warning.dart';
import './with_early_fraud_warning_get_request_body.dart';
import './with_early_fraud_warning_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\radar\early_fraud_warnings\{early_fraud_warning}
class WithEarlyFraudWarningItemRequestBuilder
    extends BaseRequestBuilder<WithEarlyFraudWarningItemRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  WithEarlyFraudWarningItemRequestBuilder clone() {
    return WithEarlyFraudWarningItemRequestBuilder(
        pathParameters, requestAdapter);
  }

  /// Instantiates a new [WithEarlyFraudWarningItemRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithEarlyFraudWarningItemRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/early_fraud_warnings/{early_fraud_warning}{?expand*}",
            pathParameters);

  /// Instantiates a new [WithEarlyFraudWarningItemRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  WithEarlyFraudWarningItemRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/radar/early_fraud_warnings/{early_fraud_warning}{?expand*}",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Retrieves the details of an early fraud warning that has previously been created. </p><p>Please refer to the <a href="#early_fraud_warning_object">early fraud warning</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<EarlyFraudWarning?> getAsync(WithEarlyFraudWarningGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithEarlyFraudWarningItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toGetRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<EarlyFraudWarning>(requestInfo,
        EarlyFraudWarning.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Retrieves the details of an early fraud warning that has previously been created. </p><p>Please refer to the <a href="#early_fraud_warning_object">early fraud warning</a> object reference for more details.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toGetRequestInformation(
      WithEarlyFraudWarningGetRequestBody body,
      [void Function(
              RequestConfiguration<
                  WithEarlyFraudWarningItemRequestBuilderGetQueryParameters>)?
          requestConfiguration]) {
    var requestInfo = RequestInformation(
        httpMethod: HttpMethod.get,
        urlTemplate: urlTemplate,
        pathParameters: pathParameters);
    requestInfo
        .configure<WithEarlyFraudWarningItemRequestBuilderGetQueryParameters>(
            requestConfiguration,
            () => WithEarlyFraudWarningItemRequestBuilderGetQueryParameters());
    requestInfo.headers.put('Accept', 'application/json');
    requestInfo.setContentFromParsable(
        requestAdapter, 'application/x-www-form-urlencoded', body);
    return requestInfo;
  }
}
