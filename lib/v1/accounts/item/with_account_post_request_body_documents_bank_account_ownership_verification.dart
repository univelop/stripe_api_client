// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The files property
  Iterable<String>? files;

  /// Instantiates a new [WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification] and sets the default values.
  WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['files'] =
        (node) => files = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('files', files);
    writer.writeAdditionalData(additionalData);
  }
}
