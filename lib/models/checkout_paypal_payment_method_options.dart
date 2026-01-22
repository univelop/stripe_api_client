// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_paypal_payment_method_options_capture_method.dart';
import './checkout_paypal_payment_method_options_setup_future_usage.dart';

/// auto generated
class CheckoutPaypalPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  CheckoutPaypalPaymentMethodOptionsCaptureMethod? captureMethod;

  ///  Preferred locale of the PayPal checkout page that the customer is redirected to.
  String? preferredLocale;

  ///  A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
  String? reference;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  CheckoutPaypalPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

  /// Instantiates a new [CheckoutPaypalPaymentMethodOptions] and sets the default values.
  CheckoutPaypalPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutPaypalPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutPaypalPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<CheckoutPaypalPaymentMethodOptionsCaptureMethod>(
            (stringValue) => CheckoutPaypalPaymentMethodOptionsCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['preferred_locale'] =
        (node) => preferredLocale = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<CheckoutPaypalPaymentMethodOptionsSetupFutureUsage>(
            (stringValue) => CheckoutPaypalPaymentMethodOptionsSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CheckoutPaypalPaymentMethodOptionsCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('preferred_locale', preferredLocale);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<CheckoutPaypalPaymentMethodOptionsSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
