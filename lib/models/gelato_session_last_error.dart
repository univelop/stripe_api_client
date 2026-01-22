// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_session_last_error_code.dart';

/// auto generated
/// Shows last VerificationSession error
class GelatoSessionLastError implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A short machine-readable string giving the reason for the verification or user-session failure.
  GelatoSessionLastErrorCode? code;

  ///  A message that explains the reason for verification or user-session failure.
  String? reason;

  /// Instantiates a new [GelatoSessionLastError] and sets the default values.
  GelatoSessionLastError() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoSessionLastError createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoSessionLastError();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<GelatoSessionLastErrorCode>((stringValue) =>
            GelatoSessionLastErrorCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<GelatoSessionLastErrorCode>(
        'code', code, (e) => e?.value);
    writer.writeStringValue('reason', reason);
    writer.writeAdditionalData(additionalData);
  }
}
