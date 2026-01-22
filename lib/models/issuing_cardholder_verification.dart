// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_cardholder_id_document.dart';

/// auto generated
class IssuingCardholderVerification implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An identifying document, either a passport or local ID card.
  IssuingCardholderIdDocument? document;

  /// Instantiates a new [IssuingCardholderVerification] and sets the default values.
  IssuingCardholderVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderVerification createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<IssuingCardholderIdDocument>(
            IssuingCardholderIdDocument.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardholderIdDocument>('document', document);
    writer.writeAdditionalData(additionalData);
  }
}
