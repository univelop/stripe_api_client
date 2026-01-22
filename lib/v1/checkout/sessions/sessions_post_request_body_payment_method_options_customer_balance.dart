// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_bank_transfer.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_funding_type.dart';
import './sessions_post_request_body_payment_method_options_customer_balance_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer?
      bankTransfer;

  ///  The funding_type property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceFundingType?
      fundingType;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceSetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'bank_transfer'] = (node) => bankTransfer = node.getObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer>(
        SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer
            .createFromDiscriminatorValue);
    deserializerMap['funding_type'] = (node) => fundingType = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceFundingType>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceFundingType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceSetupFutureUsage
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
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceBankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceFundingType>(
        'funding_type', fundingType, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalanceSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
