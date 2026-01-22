// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_automatic_payment_methods_payment_intent_allow_redirects.dart';

/// auto generated
class PaymentFlowsAutomaticPaymentMethodsPaymentIntent
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls whether this PaymentIntent will accept redirect-based payment methods.Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://docs.stripe.com/api/payment_intents/confirm) this PaymentIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the payment.
  PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects?
      allowRedirects;

  ///  Automatically calculates compatible payment methods
  bool? enabled;

  /// Instantiates a new [PaymentFlowsAutomaticPaymentMethodsPaymentIntent] and sets the default values.
  PaymentFlowsAutomaticPaymentMethodsPaymentIntent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAutomaticPaymentMethodsPaymentIntent
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsAutomaticPaymentMethodsPaymentIntent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redirects'] = (node) => allowRedirects =
        node.getEnumValue<
                PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects>(
            (stringValue) =>
                PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects>(
        'allow_redirects', allowRedirects, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeAdditionalData(additionalData);
  }
}
