// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_us_bank_account_financial_connections.dart';
import './sessions_post_request_body_payment_method_options_us_bank_account_setup_future_usage.dart';
import './sessions_post_request_body_payment_method_options_us_bank_account_verification_method.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections?
      financialConnections;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountSetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod?
      verificationMethod;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod
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
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountFinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccountVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
