// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_card_three_d_secure_ares_trans_status.dart';
import './setup_intents_post_request_body_payment_method_options_card_three_d_secure_electronic_commerce_indicator.dart';
import './setup_intents_post_request_body_payment_method_options_card_three_d_secure_network_options.dart';
import './setup_intents_post_request_body_payment_method_options_card_three_d_secure_version.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ares_trans_status property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureAresTransStatus?
      aresTransStatus;

  ///  The cryptogram property
  String? cryptogram;

  ///  The electronic_commerce_indicator property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator?
      electronicCommerceIndicator;

  ///  The network_options property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions?
      networkOptions;

  ///  The requestor_challenge_indicator property
  String? requestorChallengeIndicator;

  ///  The transaction_id property
  String? transactionId;

  ///  The version property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureVersion?
      version;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'ares_trans_status'] = (node) => aresTransStatus = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureAresTransStatus>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureAresTransStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cryptogram'] =
        (node) => cryptogram = node.getStringValue();
    deserializerMap['electronic_commerce_indicator'] = (node) =>
        electronicCommerceIndicator = node.getEnumValue<
                SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator>(
            (stringValue) =>
                SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'network_options'] = (node) => networkOptions = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions
            .createFromDiscriminatorValue);
    deserializerMap['requestor_challenge_indicator'] =
        (node) => requestorChallengeIndicator = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    deserializerMap['version'] = (node) => version = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureVersion>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureVersion
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
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureAresTransStatus>(
        'ares_trans_status', aresTransStatus, (e) => e?.value);
    writer.writeStringValue('cryptogram', cryptogram);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureElectronicCommerceIndicator>(
        'electronic_commerce_indicator',
        electronicCommerceIndicator,
        (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureNetworkOptions>(
        'network_options', networkOptions);
    writer.writeStringValue(
        'requestor_challenge_indicator', requestorChallengeIndicator);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardThreeDSecureVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
