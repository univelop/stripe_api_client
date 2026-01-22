// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_cardholder_id_document_back.dart';
import './issuing_cardholder_id_document_front.dart';

/// auto generated
class IssuingCardholderIdDocument implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The back of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`.
  IssuingCardholderIdDocumentBack? back;

  ///  The front of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `identity_document`.
  IssuingCardholderIdDocumentFront? front;

  /// Instantiates a new [IssuingCardholderIdDocument] and sets the default values.
  IssuingCardholderIdDocument() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardholderIdDocument createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingCardholderIdDocument();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['back'] = (node) => back =
        node.getObjectValue<IssuingCardholderIdDocumentBack>(
            IssuingCardholderIdDocumentBack.createFromDiscriminatorValue);
    deserializerMap['front'] = (node) => front =
        node.getObjectValue<IssuingCardholderIdDocumentFront>(
            IssuingCardholderIdDocumentFront.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardholderIdDocumentBack>('back', back);
    writer.writeObjectValue<IssuingCardholderIdDocumentFront>('front', front);
    writer.writeAdditionalData(additionalData);
  }
}
