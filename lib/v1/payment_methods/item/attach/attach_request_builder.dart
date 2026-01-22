// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/payment_method.dart';
import './attach_post_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \v1\payment_methods\{payment_method}\attach
class AttachRequestBuilder extends BaseRequestBuilder<AttachRequestBuilder> {
  /// Clones the requestbuilder.
  @override
  AttachRequestBuilder clone() {
    return AttachRequestBuilder(pathParameters, requestAdapter);
  }

  /// Instantiates a new [AttachRequestBuilder] and sets the default values.
  ///  [pathParameters] Path parameters for the request
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AttachRequestBuilder(
      Map<String, dynamic> pathParameters, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_methods/{payment_method}/attach",
            pathParameters);

  /// Instantiates a new [AttachRequestBuilder] and sets the default values.
  ///  [rawUrl] The raw URL to use for the request builder.
  ///  [requestAdapter] The request adapter to use to execute the requests.
  AttachRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter)
      : super(
            requestAdapter,
            "{+baseurl}/v1/payment_methods/{payment_method}/attach",
            {RequestInformation.rawUrlKey: rawUrl});

  /// <p>Attaches a PaymentMethod object to a Customer.</p><p>To attach a new PaymentMethod to a customer for future payments, we recommend you use a <a href="/docs/api/setup_intents">SetupIntent</a>or a PaymentIntent with <a href="/docs/api/payment_intents/create#create_payment_intent-setup_future_usage">setup_future_usage</a>.These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the <code>/v1/payment_methods/:id/attach</code>endpoint without first using a SetupIntent or PaymentIntent with <code>setup_future_usage</code> does not optimize the PaymentMethod forfuture use, which makes later declines and payment friction more likely.See <a href="/docs/payments/payment-intents#future-usage">Optimizing cards for future payments</a> for more information about setting upfuture payments.</p><p>To use this PaymentMethod as the default for invoice or subscription payments,set <a href="/docs/api/customers/update#update_customer-invoice_settings-default_payment_method"><code>invoice_settings.default_payment_method</code></a>,on the Customer to the PaymentMethod’s ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  Future<PaymentMethod?> postAsync(AttachPostRequestBody body,
      [void Function(RequestConfiguration<DefaultQueryParameters>)?
          requestConfiguration]) async {
    var requestInfo = toPostRequestInformation(body, requestConfiguration);
    final errorMapping = <String, ParsableFactory<Parsable>>{
      'XXX': Error.createFromDiscriminatorValue,
    };
    return await requestAdapter.send<PaymentMethod>(
        requestInfo, PaymentMethod.createFromDiscriminatorValue, errorMapping);
  }

  /// <p>Attaches a PaymentMethod object to a Customer.</p><p>To attach a new PaymentMethod to a customer for future payments, we recommend you use a <a href="/docs/api/setup_intents">SetupIntent</a>or a PaymentIntent with <a href="/docs/api/payment_intents/create#create_payment_intent-setup_future_usage">setup_future_usage</a>.These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the <code>/v1/payment_methods/:id/attach</code>endpoint without first using a SetupIntent or PaymentIntent with <code>setup_future_usage</code> does not optimize the PaymentMethod forfuture use, which makes later declines and payment friction more likely.See <a href="/docs/payments/payment-intents#future-usage">Optimizing cards for future payments</a> for more information about setting upfuture payments.</p><p>To use this PaymentMethod as the default for invoice or subscription payments,set <a href="/docs/api/customers/update#update_customer-invoice_settings-default_payment_method"><code>invoice_settings.default_payment_method</code></a>,on the Customer to the PaymentMethod’s ID.</p>
  ///  [body] The request body
  ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
  RequestInformation toPostRequestInformation(AttachPostRequestBody body,
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
