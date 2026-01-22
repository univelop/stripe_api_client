// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_verification_data_three_d_secure_result.dart';

/// auto generated
class AuthorizationsPostRequestBodyVerificationDataThreeDSecure
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The result property
  AuthorizationsPostRequestBodyVerificationDataThreeDSecureResult? result;

  /// Instantiates a new [AuthorizationsPostRequestBodyVerificationDataThreeDSecure] and sets the default values.
  AuthorizationsPostRequestBodyVerificationDataThreeDSecure()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyVerificationDataThreeDSecure
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyVerificationDataThreeDSecure();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['result'] = (node) => result = node.getEnumValue<
            AuthorizationsPostRequestBodyVerificationDataThreeDSecureResult>(
        (stringValue) =>
            AuthorizationsPostRequestBodyVerificationDataThreeDSecureResult
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
            AuthorizationsPostRequestBodyVerificationDataThreeDSecureResult>(
        'result', result, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
