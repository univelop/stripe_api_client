// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_session_redaction_status.dart';

/// auto generated
class VerificationSessionRedaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether this object and its related objects have been redacted or not.
  VerificationSessionRedactionStatus? status;

  /// Instantiates a new [VerificationSessionRedaction] and sets the default values.
  VerificationSessionRedaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionRedaction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return VerificationSessionRedaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<VerificationSessionRedactionStatus>((stringValue) =>
            VerificationSessionRedactionStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<VerificationSessionRedactionStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
