// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_authentication_exemption_claimed_by.dart';
import './issuing_authorization_authentication_exemption_type.dart';

/// auto generated
class IssuingAuthorizationAuthenticationExemption
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The entity that requested the exemption, either the acquiring merchant or the Issuing user.
  IssuingAuthorizationAuthenticationExemptionClaimedBy? claimedBy;

  ///  The specific exemption claimed for this authorization.
  IssuingAuthorizationAuthenticationExemptionType? type_;

  /// Instantiates a new [IssuingAuthorizationAuthenticationExemption] and sets the default values.
  IssuingAuthorizationAuthenticationExemption() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationAuthenticationExemption
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingAuthorizationAuthenticationExemption();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['claimed_by'] = (node) => claimedBy =
        node.getEnumValue<IssuingAuthorizationAuthenticationExemptionClaimedBy>(
            (stringValue) =>
                IssuingAuthorizationAuthenticationExemptionClaimedBy.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<IssuingAuthorizationAuthenticationExemptionType>(
            (stringValue) => IssuingAuthorizationAuthenticationExemptionType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingAuthorizationAuthenticationExemptionClaimedBy>(
        'claimed_by', claimedBy, (e) => e?.value);
    writer.writeEnumValue<IssuingAuthorizationAuthenticationExemptionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
