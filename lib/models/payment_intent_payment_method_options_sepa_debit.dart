// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_mandate_options_sepa_debit.dart';
import './payment_intent_payment_method_options_sepa_debit_setup_future_usage.dart';

/// auto generated
class PaymentIntentPaymentMethodOptionsSepaDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  PaymentIntentPaymentMethodOptionsMandateOptionsSepaDebit? mandateOptions;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentIntentPaymentMethodOptionsSepaDebitSetupFutureUsage? setupFutureUsage;

  ///  Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
  String? targetDate;

  /// Instantiates a new [PaymentIntentPaymentMethodOptionsSepaDebit] and sets the default values.
  PaymentIntentPaymentMethodOptionsSepaDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsSepaDebit
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentPaymentMethodOptionsSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<
                PaymentIntentPaymentMethodOptionsMandateOptionsSepaDebit>(
            PaymentIntentPaymentMethodOptionsMandateOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<
                PaymentIntentPaymentMethodOptionsSepaDebitSetupFutureUsage>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsSepaDebitSetupFutureUsage
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentPaymentMethodOptionsMandateOptionsSepaDebit>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsSepaDebitSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeAdditionalData(additionalData);
  }
}
