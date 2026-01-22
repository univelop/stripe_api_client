// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_bank_transfer.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_funding_type.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer?
      bankTransfer;

  ///  The funding_type property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType?
      fundingType;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bank_transfer'] = (node) => bankTransfer = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['funding_type'] = (node) => fundingType = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType>(
        'funding_type', fundingType, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
