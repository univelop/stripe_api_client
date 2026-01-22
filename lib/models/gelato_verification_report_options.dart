// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_report_document_options.dart';
import './gelato_report_id_number_options.dart';

/// auto generated
class GelatoVerificationReportOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The document property
  GelatoReportDocumentOptions? document;

  ///  The id_number property
  GelatoReportIdNumberOptions? idNumber;

  /// Instantiates a new [GelatoVerificationReportOptions] and sets the default values.
  GelatoVerificationReportOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoVerificationReportOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoVerificationReportOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<GelatoReportDocumentOptions>(
            GelatoReportDocumentOptions.createFromDiscriminatorValue);
    deserializerMap['id_number'] = (node) => idNumber =
        node.getObjectValue<GelatoReportIdNumberOptions>(
            GelatoReportIdNumberOptions.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<GelatoReportDocumentOptions>('document', document);
    writer.writeObjectValue<GelatoReportIdNumberOptions>('id_number', idNumber);
    writer.writeAdditionalData(additionalData);
  }
}
