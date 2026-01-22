// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './three_d_secure_details_charge_authentication_flow.dart';
import './three_d_secure_details_charge_electronic_commerce_indicator.dart';
import './three_d_secure_details_charge_exemption_indicator.dart';
import './three_d_secure_details_charge_result.dart';
import './three_d_secure_details_charge_result_reason.dart';
import './three_d_secure_details_charge_version.dart';

/// auto generated
class ThreeDSecureDetailsCharge implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  For authenticated transactions: how the customer was authenticated bythe issuing bank.
  ThreeDSecureDetailsChargeAuthenticationFlow? authenticationFlow;

  ///  The Electronic Commerce Indicator (ECI). A protocol-level fieldindicating what degree of authentication was performed.
  ThreeDSecureDetailsChargeElectronicCommerceIndicator?
      electronicCommerceIndicator;

  ///  The exemption requested via 3DS and accepted by the issuer at authentication time.
  ThreeDSecureDetailsChargeExemptionIndicator? exemptionIndicator;

  ///  Whether Stripe requested the value of `exemption_indicator` in the transaction. This will depend onthe outcome of Stripe's internal risk assessment.
  bool? exemptionIndicatorApplied;

  ///  Indicates the outcome of 3D Secure authentication.
  ThreeDSecureDetailsChargeResult? result;

  ///  Additional information about why 3D Secure succeeded or failed basedon the `result`.
  ThreeDSecureDetailsChargeResultReason? resultReason;

  ///  The 3D Secure 1 XID or 3D Secure 2 Directory Server Transaction ID(dsTransId) for this payment.
  String? transactionId;

  ///  The version of 3D Secure that was used.
  ThreeDSecureDetailsChargeVersion? version;

  /// Instantiates a new [ThreeDSecureDetailsCharge] and sets the default values.
  ThreeDSecureDetailsCharge() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ThreeDSecureDetailsCharge createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ThreeDSecureDetailsCharge();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['authentication_flow'] = (node) => authenticationFlow =
        node.getEnumValue<ThreeDSecureDetailsChargeAuthenticationFlow>(
            (stringValue) => ThreeDSecureDetailsChargeAuthenticationFlow.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['electronic_commerce_indicator'] = (node) =>
        electronicCommerceIndicator = node
            .getEnumValue<ThreeDSecureDetailsChargeElectronicCommerceIndicator>(
                (stringValue) =>
                    ThreeDSecureDetailsChargeElectronicCommerceIndicator.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    deserializerMap['exemption_indicator'] = (node) => exemptionIndicator =
        node.getEnumValue<ThreeDSecureDetailsChargeExemptionIndicator>(
            (stringValue) => ThreeDSecureDetailsChargeExemptionIndicator.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['exemption_indicator_applied'] =
        (node) => exemptionIndicatorApplied = node.getBoolValue();
    deserializerMap['result'] = (node) => result =
        node.getEnumValue<ThreeDSecureDetailsChargeResult>((stringValue) =>
            ThreeDSecureDetailsChargeResult.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['result_reason'] = (node) => resultReason =
        node.getEnumValue<ThreeDSecureDetailsChargeResultReason>(
            (stringValue) => ThreeDSecureDetailsChargeResultReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    deserializerMap['version'] = (node) => version =
        node.getEnumValue<ThreeDSecureDetailsChargeVersion>((stringValue) =>
            ThreeDSecureDetailsChargeVersion.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ThreeDSecureDetailsChargeAuthenticationFlow>(
        'authentication_flow', authenticationFlow, (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsChargeElectronicCommerceIndicator>(
        'electronic_commerce_indicator',
        electronicCommerceIndicator,
        (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsChargeExemptionIndicator>(
        'exemption_indicator', exemptionIndicator, (e) => e?.value);
    writer.writeBoolValue('exemption_indicator_applied',
        value: exemptionIndicatorApplied);
    writer.writeEnumValue<ThreeDSecureDetailsChargeResult>(
        'result', result, (e) => e?.value);
    writer.writeEnumValue<ThreeDSecureDetailsChargeResultReason>(
        'result_reason', resultReason, (e) => e?.value);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeEnumValue<ThreeDSecureDetailsChargeVersion>(
        'version', version, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
