// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_financial_connections.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_mandate_options.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_networks.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_preferred_settlement_speed.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_setup_future_usage.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account_member1_verification_method.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections?
      financialConnections;

  ///  The mandate_options property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions?
      mandateOptions;

  ///  The networks property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks?
      networks;

  ///  The preferred_settlement_speed property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed?
      preferredSettlementSpeed;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks
            .createFromDiscriminatorValue);
    deserializerMap['preferred_settlement_speed'] = (node) =>
        preferredSettlementSpeed = node.getEnumValue<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod
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
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        'networks', networks);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
        'preferred_settlement_speed',
        preferredSettlementSpeed,
        (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
