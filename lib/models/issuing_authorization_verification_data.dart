// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_authentication_exemption.dart';
import './issuing_authorization_three_d_secure.dart';
import './issuing_authorization_verification_data_address_line1_check.dart';
import './issuing_authorization_verification_data_address_postal_code_check.dart';
import './issuing_authorization_verification_data_cvc_check.dart';
import './issuing_authorization_verification_data_expiry_check.dart';

/// auto generated
class IssuingAuthorizationVerificationData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
  IssuingAuthorizationVerificationDataAddressLine1Check? addressLine1Check;

  ///  Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
  IssuingAuthorizationVerificationDataAddressPostalCodeCheck?
      addressPostalCodeCheck;

  ///  The exemption applied to this authorization.
  IssuingAuthorizationAuthenticationExemption? authenticationExemption;

  ///  Whether the cardholder provided a CVC and if it matched Stripe’s record.
  IssuingAuthorizationVerificationDataCvcCheck? cvcCheck;

  ///  Whether the cardholder provided an expiry date and if it matched Stripe’s record.
  IssuingAuthorizationVerificationDataExpiryCheck? expiryCheck;

  ///  The postal code submitted as part of the authorization used for postal code verification.
  String? postalCode;

  ///  3D Secure details.
  IssuingAuthorizationThreeDSecure? threeDSecure;

  /// Instantiates a new [IssuingAuthorizationVerificationData] and sets the default values.
  IssuingAuthorizationVerificationData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationVerificationData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationVerificationData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address_line1_check'] = (node) => addressLine1Check = node
        .getEnumValue<IssuingAuthorizationVerificationDataAddressLine1Check>(
            (stringValue) =>
                IssuingAuthorizationVerificationDataAddressLine1Check.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['address_postal_code_check'] = (node) =>
        addressPostalCodeCheck = node.getEnumValue<
                IssuingAuthorizationVerificationDataAddressPostalCodeCheck>(
            (stringValue) =>
                IssuingAuthorizationVerificationDataAddressPostalCodeCheck
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['authentication_exemption'] = (node) =>
        authenticationExemption =
            node.getObjectValue<IssuingAuthorizationAuthenticationExemption>(
                IssuingAuthorizationAuthenticationExemption
                    .createFromDiscriminatorValue);
    deserializerMap['cvc_check'] = (node) => cvcCheck =
        node.getEnumValue<IssuingAuthorizationVerificationDataCvcCheck>(
            (stringValue) => IssuingAuthorizationVerificationDataCvcCheck.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expiry_check'] = (node) => expiryCheck =
        node.getEnumValue<IssuingAuthorizationVerificationDataExpiryCheck>(
            (stringValue) => IssuingAuthorizationVerificationDataExpiryCheck
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['postal_code'] =
        (node) => postalCode = node.getStringValue();
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<IssuingAuthorizationThreeDSecure>(
            IssuingAuthorizationThreeDSecure.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<IssuingAuthorizationVerificationDataAddressLine1Check>(
            'address_line1_check', addressLine1Check, (e) => e?.value);
    writer.writeEnumValue<
            IssuingAuthorizationVerificationDataAddressPostalCodeCheck>(
        'address_postal_code_check', addressPostalCodeCheck, (e) => e?.value);
    writer.writeObjectValue<IssuingAuthorizationAuthenticationExemption>(
        'authentication_exemption', authenticationExemption);
    writer.writeEnumValue<IssuingAuthorizationVerificationDataCvcCheck>(
        'cvc_check', cvcCheck, (e) => e?.value);
    writer.writeEnumValue<IssuingAuthorizationVerificationDataExpiryCheck>(
        'expiry_check', expiryCheck, (e) => e?.value);
    writer.writeStringValue('postal_code', postalCode);
    writer.writeObjectValue<IssuingAuthorizationThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
