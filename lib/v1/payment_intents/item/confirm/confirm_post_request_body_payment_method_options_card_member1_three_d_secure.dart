// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_ares_trans_status.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_electronic_commerce_indicator.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_exemption_indicator.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_network_options.dart';
import './confirm_post_request_body_payment_method_options_card_member1_three_d_secure_version.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ares_trans_status property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus?
      aresTransStatus;

  ///  The cryptogram property
  String? cryptogram;

  ///  The electronic_commerce_indicator property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator?
      electronicCommerceIndicator;

  ///  The exemption_indicator property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator?
      exemptionIndicator;

  ///  The network_options property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions?
      networkOptions;

  ///  The requestor_challenge_indicator property
  String? requestorChallengeIndicator;

  ///  The transaction_id property
  String? transactionId;

  ///  The version property
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion?
      version;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'ares_trans_status'] = (node) => aresTransStatus = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cryptogram'] =
        (node) => cryptogram = node.getStringValue();
    deserializerMap['electronic_commerce_indicator'] = (node) =>
        electronicCommerceIndicator = node.getEnumValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'exemption_indicator'] = (node) => exemptionIndicator = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'network_options'] = (node) => networkOptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions
            .createFromDiscriminatorValue);
    deserializerMap['requestor_challenge_indicator'] =
        (node) => requestorChallengeIndicator = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    deserializerMap['version'] = (node) => version = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion
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
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureAresTransStatus>(
        'ares_trans_status', aresTransStatus, (e) => e?.value);
    writer.writeStringValue('cryptogram', cryptogram);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureElectronicCommerceIndicator>(
        'electronic_commerce_indicator',
        electronicCommerceIndicator,
        (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureExemptionIndicator>(
        'exemption_indicator', exemptionIndicator, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureNetworkOptions>(
        'network_options', networkOptions);
    writer.writeStringValue(
        'requestor_challenge_indicator', requestorChallengeIndicator);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardMember1ThreeDSecureVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
