// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CountrySpecVerificationFieldDetails
    implements AdditionalDataHolder, Parsable {
  ///  Additional fields which are only required for some users.
  Iterable<String>? additional;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Fields which every account must eventually provide.
  Iterable<String>? minimum;

  /// Instantiates a new [CountrySpecVerificationFieldDetails] and sets the default values.
  CountrySpecVerificationFieldDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CountrySpecVerificationFieldDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CountrySpecVerificationFieldDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional'] =
        (node) => additional = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['minimum'] =
        (node) => minimum = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('additional', additional);
    writer.writeCollectionOfPrimitiveValues<String?>('minimum', minimum);
    writer.writeAdditionalData(additionalData);
  }
}
