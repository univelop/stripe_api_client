// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_three_d_secure_result.dart';

/// auto generated
class IssuingAuthorizationThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The outcome of the 3D Secure authentication request.
  IssuingAuthorizationThreeDSecureResult? result;

  /// Instantiates a new [IssuingAuthorizationThreeDSecure] and sets the default values.
  IssuingAuthorizationThreeDSecure() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationThreeDSecure createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['result'] = (node) => result =
        node.getEnumValue<IssuingAuthorizationThreeDSecureResult>(
            (stringValue) => IssuingAuthorizationThreeDSecureResult.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingAuthorizationThreeDSecureResult>(
        'result', result, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
