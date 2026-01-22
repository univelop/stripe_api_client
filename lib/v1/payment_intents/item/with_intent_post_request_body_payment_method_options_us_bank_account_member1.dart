// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_financial_connections.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_mandate_options.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_networks.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_preferred_settlement_speed.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_setup_future_usage.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account_member1_verification_method.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections?
      financialConnections;

  ///  The mandate_options property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions?
      mandateOptions;

  ///  The networks property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks?
      networks;

  ///  The preferred_settlement_speed property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed?
      preferredSettlementSpeed;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks
            .createFromDiscriminatorValue);
    deserializerMap['preferred_settlement_speed'] = (node) =>
        preferredSettlementSpeed = node.getEnumValue<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod
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
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        'networks', networks);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
        'preferred_settlement_speed',
        preferredSettlementSpeed,
        (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
