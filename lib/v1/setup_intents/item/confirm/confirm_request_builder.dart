// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/setup_intent.dart';
import './confirm_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\setup_intents\{intent}\confirm
class ConfirmRequestBuilder extends BaseRequestBuilder<ConfirmRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  ConfirmRequestBuilder clone() {
    return ConfirmRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [ConfirmRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/setup_intents/{intent}/confirm",
            pathParameters);

  /// Instantiates a new [ConfirmRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  ConfirmRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(requestAdapter, "{+baseurl}/v1/setup_intents/{intent}/confirm",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Confirm that your customer intends to set up the current orprovided payment method. For example, you would confirm a SetupIntentwhen a customer hits the “Save” button on a payment method managementpage on your website.</p><p>If the selected payment method does not require any additionalsteps from the customer, the SetupIntent will transition to the<code>succeeded</code> status.</p><p>Otherwise, it will transition to the <code>requires_action</code> status andsuggest additional actions via <code>next_action</code>. If setup fails,the SetupIntent will transition to the<code>requires_payment_method</code> status or the <code>canceled</code> status if theconfirmation limit is reached.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<SetupIntent?> postAsync(ConfirmPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<SetupIntent>(
        requestInfo, SetupIntent.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Confirm that your customer intends to set up the current orprovided payment method. For example, you would confirm a SetupIntentwhen a customer hits the “Save” button on a payment method managementpage on your website.</p><p>If the selected payment method does not require any additionalsteps from the customer, the SetupIntent will transition to the<code>succeeded</code> status.</p><p>Otherwise, it will transition to the <code>requires_action</code> status andsuggest additional actions via <code>next_action</code>. If setup fails,the SetupIntent will transition to the<code>requires_payment_method</code> status or the <code>canceled</code> status if theconfirmation limit is reached.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(ConfirmPostRequestBody body,
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
