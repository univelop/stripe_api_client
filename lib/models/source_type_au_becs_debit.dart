// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeAuBecsDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bsb_number property
  String? bsbNumber;

  ///  The fingerprint property
  String? fingerprint;

  ///  The last4 property
  String? last4;

  /// Instantiates a new [SourceTypeAuBecsDebit] and sets the default values.
  SourceTypeAuBecsDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeAuBecsDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeAuBecsDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bsb_number'] = (node) => bsbNumber = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bsb_number', bsbNumber);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeAdditionalData(additionalData);
  }
}
