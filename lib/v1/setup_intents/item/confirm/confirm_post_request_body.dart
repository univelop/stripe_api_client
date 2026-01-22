// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_mandate_data.dart';
import './confirm_post_request_body_payment_method_data.dart';
import './confirm_post_request_body_payment_method_options.dart';

/// auto generated
class ConfirmPostRequestBody implements Parsable {
  ///  The client secret of the SetupIntent.
  String? clientSecret;

  ///  ID of the ConfirmationToken used to confirm this SetupIntent.If the provided ConfirmationToken contains properties that are also being provided in this request, such as `payment_method`, then the values in this request will take precedence.
  String? confirmationToken;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The mandate_data property
  ConfirmPostRequestBodyMandateData? mandateData;

  ///  ID of the payment method (a PaymentMethod, Card, or saved Source object) to attach to this SetupIntent.
  String? paymentMethod;

  ///  When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)value in the SetupIntent.
  ConfirmPostRequestBodyPaymentMethodData? paymentMethodData;

  ///  Payment method-specific configuration for this SetupIntent.
  ConfirmPostRequestBodyPaymentMethodOptions? paymentMethodOptions;

  ///  The URL to redirect your customer back to after they authenticate on the payment method's app or site.If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.This parameter is only used for cards and other redirect-based payment methods.
  String? returnUrl;

  ///  Set to `true` when confirming server-side and using Stripe.js, iOS, or Android client-side SDKs to handle the next actions.
  bool? useStripeSdk;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['confirmation_token'] =
        (node) => confirmationToken = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['mandate_data'] = (node) => mandateData =
        node.getObjectValue<ConfirmPostRequestBodyMandateData>(
            ConfirmPostRequestBodyMandateData.createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['payment_method_data'] = (node) => paymentMethodData =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodData>(
            ConfirmPostRequestBodyPaymentMethodData
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptions>(
            ConfirmPostRequestBodyPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['use_stripe_sdk'] =
        (node) => useStripeSdk = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeStringValue('confirmation_token', confirmationToken);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ConfirmPostRequestBodyMandateData>(
        'mandate_data', mandateData);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodData>(
        'payment_method_data', paymentMethodData);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeBoolValue('use_stripe_sdk', value: useStripeSdk);
  }
}
