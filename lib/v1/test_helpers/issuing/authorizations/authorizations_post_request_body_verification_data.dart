// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_verification_data_address_line1_check.dart';
import './authorizations_post_request_body_verification_data_address_postal_code_check.dart';
import './authorizations_post_request_body_verification_data_authentication_exemption.dart';
import './authorizations_post_request_body_verification_data_cvc_check.dart';
import './authorizations_post_request_body_verification_data_expiry_check.dart';
import './authorizations_post_request_body_verification_data_three_d_secure.dart';

/// auto generated
/// Verifications that Stripe performed on information that the cardholder provided to the merchant.
class AuthorizationsPostRequestBodyVerificationData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address_line1_check property
  AuthorizationsPostRequestBodyVerificationDataAddressLine1Check?
      addressLine1Check;

  ///  The address_postal_code_check property
  AuthorizationsPostRequestBodyVerificationDataAddressPostalCodeCheck?
      addressPostalCodeCheck;

  ///  The authentication_exemption property
  AuthorizationsPostRequestBodyVerificationDataAuthenticationExemption?
      authenticationExemption;

  ///  The cvc_check property
  AuthorizationsPostRequestBodyVerificationDataCvcCheck? cvcCheck;

  ///  The expiry_check property
  AuthorizationsPostRequestBodyVerificationDataExpiryCheck? expiryCheck;

  ///  The three_d_secure property
  AuthorizationsPostRequestBodyVerificationDataThreeDSecure? threeDSecure;

  /// Instantiates a new [AuthorizationsPostRequestBodyVerificationData] and sets the default values.
  AuthorizationsPostRequestBodyVerificationData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyVerificationData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyVerificationData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address_line1_check'] = (node) => addressLine1Check =
        node.getEnumValue<
                AuthorizationsPostRequestBodyVerificationDataAddressLine1Check>(
            (stringValue) =>
                AuthorizationsPostRequestBodyVerificationDataAddressLine1Check
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['address_postal_code_check'] = (node) =>
        addressPostalCodeCheck = node.getEnumValue<
                AuthorizationsPostRequestBodyVerificationDataAddressPostalCodeCheck>(
            (stringValue) =>
                AuthorizationsPostRequestBodyVerificationDataAddressPostalCodeCheck
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['authentication_exemption'] = (node) =>
        authenticationExemption = node.getObjectValue<
                AuthorizationsPostRequestBodyVerificationDataAuthenticationExemption>(
            AuthorizationsPostRequestBodyVerificationDataAuthenticationExemption
                .createFromDiscriminatorValue);
    deserializerMap['cvc_check'] = (node) => cvcCheck = node
        .getEnumValue<AuthorizationsPostRequestBodyVerificationDataCvcCheck>(
            (stringValue) =>
                AuthorizationsPostRequestBodyVerificationDataCvcCheck.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['expiry_check'] = (node) => expiryCheck = node
        .getEnumValue<AuthorizationsPostRequestBodyVerificationDataExpiryCheck>(
            (stringValue) =>
                AuthorizationsPostRequestBodyVerificationDataExpiryCheck.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<
                AuthorizationsPostRequestBodyVerificationDataThreeDSecure>(
            AuthorizationsPostRequestBodyVerificationDataThreeDSecure
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyVerificationDataAddressLine1Check>(
        'address_line1_check', addressLine1Check, (e) => e?.value);
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyVerificationDataAddressPostalCodeCheck>(
        'address_postal_code_check', addressPostalCodeCheck, (e) => e?.value);
    writer.writeObjectValue<
            AuthorizationsPostRequestBodyVerificationDataAuthenticationExemption>(
        'authentication_exemption', authenticationExemption);
    writer
        .writeEnumValue<AuthorizationsPostRequestBodyVerificationDataCvcCheck>(
            'cvc_check', cvcCheck, (e) => e?.value);
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyVerificationDataExpiryCheck>(
        'expiry_check', expiryCheck, (e) => e?.value);
    writer.writeObjectValue<
            AuthorizationsPostRequestBodyVerificationDataThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeAdditionalData(additionalData);
  }
}
