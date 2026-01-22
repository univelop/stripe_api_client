// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/application_fee.dart';
import '../../../../models/error.dart';
import './refund_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\application_fees\{fee-id}\refund
class RefundRequestBuilder extends BaseRequestBuilder<RefundRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  RefundRequestBuilder clone() {
    return RefundRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [RefundRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}/refund", pathParameters);

  /// Instantiates a new [RefundRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  RefundRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/application_fees/{fee%2Did}/refund",
            {RequestInformation.rawUrlKey: rawUrl});

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<ApplicationFee?> postAsync(RefundPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<ApplicationFee>(
        requestInfo, ApplicationFee.createFromDiscriminatorValue, errorMapping);
  }

  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(RefundPostRequestBody body,
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
