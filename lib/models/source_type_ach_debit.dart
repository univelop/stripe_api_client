// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeAchDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_name property
  String? bankName;

  ///  The country property
  String? country;

  ///  The fingerprint property
  String? fingerprint;

  ///  The last4 property
  String? last4;

  ///  The routing_number property
  String? routingNumber;

  ///  The type property
  String? type_;

  /// Instantiates a new [SourceTypeAchDebit] and sets the default values.
  SourceTypeAchDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeAchDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeAchDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('country', country);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
