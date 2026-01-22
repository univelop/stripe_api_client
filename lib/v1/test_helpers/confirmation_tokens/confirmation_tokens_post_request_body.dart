// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data.dart';
import './confirmation_tokens_post_request_body_payment_method_options.dart';
import './confirmation_tokens_post_request_body_setup_future_usage.dart';
import './confirmation_tokens_post_request_body_shipping.dart';

/// auto generated
class ConfirmationTokensPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  ID of an existing PaymentMethod.
  String? paymentMethod;

  ///  If provided, this hash will be used to create a PaymentMethod.
  ConfirmationTokensPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment-method-specific configuration for this ConfirmationToken.
  ConfirmationTokensPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  Return URL used to confirm the Intent.
  String? returnUrl;

  ///  Indicates that you intend to make future payments with this ConfirmationToken's payment method.The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
  ConfirmationTokensPostRequestBodySetupFutureUsage? setupFutureUsage;

  ///  Shipping information for this ConfirmationToken.
  ConfirmationTokensPostRequestBodyShipping? shipping;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmationTokensPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodData>(
            ConfirmationTokensPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                ConfirmationTokensPostRequestBodyPaymentMethodOptions>(
            ConfirmationTokensPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<ConfirmationTokensPostRequestBodySetupFutureUsage>(
            (stringValue) => ConfirmationTokensPostRequestBodySetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['shipping'] = (node) => shipping = node.getObjectValue<
            ConfirmationTokensPostRequestBodyShipping>(
        ConfirmationTokensPostRequestBodyShipping.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<ConfirmationTokensPostRequestBodySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<ConfirmationTokensPostRequestBodyShipping>(
        'shipping', shipping);
  }
}
