// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountRequirementsAlternative implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fields that can be provided to resolve all fields in `original_fields_due`.
  Iterable<String>? alternativeFieldsDue;

  ///  Fields that are due and can be resolved by providing all fields in `alternative_fields_due`.
  Iterable<String>? originalFieldsDue;

  /// Instantiates a new [AccountRequirementsAlternative] and sets the default values.
  AccountRequirementsAlternative() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountRequirementsAlternative createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountRequirementsAlternative();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alternative_fields_due'] = (node) =>
        alternativeFieldsDue = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['original_fields_due'] = (node) =>
        originalFieldsDue = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'alternative_fields_due', alternativeFieldsDue);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'original_fields_due', originalFieldsDue);
    writer.writeAdditionalData(additionalData);
  }
}
