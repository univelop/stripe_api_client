// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_ares_trans_status.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_electronic_commerce_indicator.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_exemption_indicator.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_network_options.dart';
import './with_intent_post_request_body_payment_method_options_card_member1_three_d_secure_version.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ares_trans_status property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus?
      aresTransStatus;

  ///  The cryptogram property
  String? cryptogram;

  ///  The electronic_commerce_indicator property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator?
      electronicCommerceIndicator;

  ///  The exemption_indicator property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator?
      exemptionIndicator;

  ///  The network_options property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions?
      networkOptions;

  ///  The requestor_challenge_indicator property
  String? requestorChallengeIndicator;

  ///  The transaction_id property
  String? transactionId;

  ///  The version property
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion?
      version;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'ares_trans_status'] = (node) => aresTransStatus = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cryptogram'] =
        (node) => cryptogram = node.getStringValue();
    deserializerMap['electronic_commerce_indicator'] = (node) =>
        electronicCommerceIndicator = node.getEnumValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'exemption_indicator'] = (node) => exemptionIndicator = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'network_options'] = (node) => networkOptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
            .createFromDiscriminatorValue);
    deserializerMap['requestor_challenge_indicator'] =
        (node) => requestorChallengeIndicator = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    deserializerMap['version'] = (node) => version = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus>(
        'ares_trans_status', aresTransStatus, (e) => e?.value);
    writer.writeStringValue('cryptogram', cryptogram);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator>(
        'electronic_commerce_indicator',
        electronicCommerceIndicator,
        (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator>(
        'exemption_indicator', exemptionIndicator, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions>(
        'network_options', networkOptions);
    writer.writeStringValue(
        'requestor_challenge_indicator', requestorChallengeIndicator);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
