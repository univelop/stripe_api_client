// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Point in Time
class GelatoDataDocumentReportDateOfBirth
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Numerical day between 1 and 31.
  int? day;

  ///  Numerical month between 1 and 12.
  int? month;

  ///  The four-digit year.
  int? year;

  /// Instantiates a new [GelatoDataDocumentReportDateOfBirth] and sets the default values.
  GelatoDataDocumentReportDateOfBirth() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoDataDocumentReportDateOfBirth createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoDataDocumentReportDateOfBirth();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['day'] = (node) => day = node.getIntValue();
    deserializerMap['month'] = (node) => month = node.getIntValue();
    deserializerMap['year'] = (node) => year = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('day', day);
    writer.writeIntValue('month', month);
    writer.writeIntValue('year', year);
    writer.writeAdditionalData(additionalData);
  }
}
