// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_financial_connections.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_mandate_options.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_networks.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_preferred_settlement_speed.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_setup_future_usage.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account_member1_verification_method.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The financial_connections property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections?
      financialConnections;

  ///  The mandate_options property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions?
      mandateOptions;

  ///  The networks property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks?
      networks;

  ///  The preferred_settlement_speed property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed?
      preferredSettlementSpeed;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The target_date property
  String? targetDate;

  ///  The verification_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod?
      verificationMethod;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['financial_connections'] = (node) => financialConnections =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections
                .createFromDiscriminatorValue);
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['networks'] = (node) => networks = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks
            .createFromDiscriminatorValue);
    deserializerMap['preferred_settlement_speed'] = (node) =>
        preferredSettlementSpeed = node.getEnumValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['target_date'] =
        (node) => targetDate = node.getStringValue();
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1FinancialConnections>(
        'financial_connections', financialConnections);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1Networks>(
        'networks', networks);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1PreferredSettlementSpeed>(
        'preferred_settlement_speed',
        preferredSettlementSpeed,
        (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('target_date', targetDate);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccountMember1VerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
