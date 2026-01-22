// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/terminal/reader.dart';
import './present_payment_method_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\test_helpers\terminal\readers\{reader}\present_payment_method
class PresentPaymentMethodRequestBuilder
    extends BaseRequestBuilder<PresentPaymentMethodRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  PresentPaymentMethodRequestBuilder clone() {
    return PresentPaymentMethodRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [PresentPaymentMethodRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PresentPaymentMethodRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/present_payment_method",
            pathParameters);

  /// Instantiates a new [PresentPaymentMethodRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  PresentPaymentMethodRequestBuilder.withUrl(
      String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/test_helpers/terminal/readers/{reader}/present_payment_method",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<Reader?> postAsync(PresentPaymentMethodPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<Reader>(
        requestInfo, Reader.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(
      PresentPaymentMethodPostRequestBody body,
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
