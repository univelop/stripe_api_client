// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_oxxo_payment_method_options_setup_future_usage.dart';

/// auto generated
class CheckoutOxxoPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The number of calendar days before an OXXO invoice expires. For example, if you create an OXXO invoice on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
  int? expiresAfterDays;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  CheckoutOxxoPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

  /// Instantiates a new [CheckoutOxxoPaymentMethodOptions] and sets the default values.
  CheckoutOxxoPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutOxxoPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutOxxoPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expires_after_days'] =
        (node) => expiresAfterDays = node.getIntValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<CheckoutOxxoPaymentMethodOptionsSetupFutureUsage>(
            (stringValue) => CheckoutOxxoPaymentMethodOptionsSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('expires_after_days', expiresAfterDays);
    writer.writeEnumValue<CheckoutOxxoPaymentMethodOptionsSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
