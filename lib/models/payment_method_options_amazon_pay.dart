// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_options_amazon_pay_capture_method.dart';
import './payment_method_options_amazon_pay_setup_future_usage.dart';

/// auto generated
class PaymentMethodOptionsAmazonPay implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentMethodOptionsAmazonPayCaptureMethod? captureMethod;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentMethodOptionsAmazonPaySetupFutureUsage? setupFutureUsage;

  /// Instantiates a new [PaymentMethodOptionsAmazonPay] and sets the default values.
  PaymentMethodOptionsAmazonPay() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodOptionsAmazonPay createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodOptionsAmazonPay();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentMethodOptionsAmazonPayCaptureMethod>(
            (stringValue) => PaymentMethodOptionsAmazonPayCaptureMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<PaymentMethodOptionsAmazonPaySetupFutureUsage>(
            (stringValue) => PaymentMethodOptionsAmazonPaySetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PaymentMethodOptionsAmazonPayCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<PaymentMethodOptionsAmazonPaySetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
