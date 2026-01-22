// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_customer_balance_member1_bank_transfer.dart';
import './confirm_post_request_body_payment_method_options_customer_balance_member1_funding_type.dart';
import './confirm_post_request_body_payment_method_options_customer_balance_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer?
      bankTransfer;

  ///  The funding_type property
  ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType?
      fundingType;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bank_transfer'] = (node) => bankTransfer = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['funding_type'] = (node) => fundingType = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1BankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1FundingType>(
        'funding_type', fundingType, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalanceMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
