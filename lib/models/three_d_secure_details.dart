// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './three_d_secure_details_authentication_flow.dart';
import './three_d_secure_details_electronic_commerce_indicator.dart';
import './three_d_secure_details_result.dart';
import './three_d_secure_details_result_reason.dart';
import './three_d_secure_details_version.dart';

/// auto generated
class ThreeDSecureDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For authenticated transactions: how the customer was authenticated bythe issuing bank.
  ThreeDSecureDetailsAuthenticationFlow? authenticationFlow;

  ///  The Electronic Commerce Indicator (ECI). A protocol-level fieldindicating what degree of authentication was performed.
  ThreeDSecureDetailsElectronicCommerceIndicator? electronicCommerceIndicator;

  ///  Indicates the outcome of 3D Secure authentication.
  ThreeDSecureDetailsResult? result;

  ///  Additional information about why 3D Secure succeeded or failed basedon the `result`.
  ThreeDSecureDetailsResultReason? resultReason;

  ///  The 3D Secure 1 XID or 3D Secure 2 Directory Server Transaction ID(dsTransId) for this payment.
  String? transactionId;

  ///  The version of 3D Secure that was used.
  ThreeDSecureDetailsVersion? version;

  /// Instantiates a new [ThreeDSecureDetails] and sets the default values.
  ThreeDSecureDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ThreeDSecureDetails createFromDiscriminatorValue(ParseNode parseNode) {
    return ThreeDSecureDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['authentication_flow'] = (node) => authenticationFlow =
        node.getEnumValue<ThreeDSecureDetailsAuthenticationFlow>(
            (stringValue) => ThreeDSecureDetailsAuthenticationFlow.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['electronic_commerce_indicator'] = (node) =>
        electronicCommerceIndicator =
            node.getEnumValue<ThreeDSecureDetailsElectronicCommerceIndicator>(
                (stringValue) => ThreeDSecureDetailsElectronicCommerceIndicator
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['result'] = (node) => result =
        node.getEnumValue<ThreeDSecureDetailsResult>((stringValue) =>
            ThreeDSecureDetailsResult.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['result_reason'] = (node) => resultReason =
        node.getEnumValue<ThreeDSecureDetailsResultReason>((stringValue) =>
            ThreeDSecureDetailsResultReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    deserializerMap['version'] = (node) => version =
        node.getEnumValue<ThreeDSecureDetailsVersion>((stringValue) =>
            ThreeDSecureDetailsVersion.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ThreeDSecureDetailsAuthenticationFlow>(
        'authentication_flow', authenticationFlow, (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsElectronicCommerceIndicator>(
        'electronic_commerce_indicator',
        electronicCommerceIndicator,
        (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsResult>(
        'result', result, (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsResultReason>(
        'result_reason', resultReason, (e) => e?.value);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeEnumValue<ThreeDSecureDetailsVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
