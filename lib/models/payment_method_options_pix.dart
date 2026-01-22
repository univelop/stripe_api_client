// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_pix_amount_includes_iof.dart';
import './payment_method_options_pix_setup_future_usage.dart';

/// auto generated
class PaymentMethodOptionsPix implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Determines if the amount includes the IOF tax.
  PaymentMethodOptionsPixAmountIncludesIof? amountIncludesIof;

  ///  The number of seconds (between 10 and 1209600) after which Pix payment will expire.
  int? expiresAfterSeconds;

  ///  The timestamp at which the Pix expires.
  int? expiresAt;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentMethodOptionsPixSetupFutureUsage? setupFutureUsage;

  /// Instantiates a new [PaymentMethodOptionsPix] and sets the default values.
  PaymentMethodOptionsPix() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsPix createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsPix();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_includes_iof'] = (node) => amountIncludesIof =
        node.getEnumValue<PaymentMethodOptionsPixAmountIncludesIof>(
            (stringValue) => PaymentMethodOptionsPixAmountIncludesIof.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expires_after_seconds'] =
        (node) => expiresAfterSeconds = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<PaymentMethodOptionsPixSetupFutureUsage>(
            (stringValue) => PaymentMethodOptionsPixSetupFutureUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodOptionsPixAmountIncludesIof>(
        'amount_includes_iof', amountIncludesIof, (e) => e?.value);
    writer.writeIntValue('expires_after_seconds', expiresAfterSeconds);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeEnumValue<PaymentMethodOptionsPixSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
