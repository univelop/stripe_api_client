// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_report_document_options_allowed_types.dart';

/// auto generated
class GelatoReportDocumentOptions implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
  Iterable<GelatoReportDocumentOptionsAllowedTypes>? allowedTypes;

  ///  Collect an ID number and perform an [ID number check](https://docs.stripe.com/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
  bool? requireIdNumber;

  ///  Disable image uploads, identity document images have to be captured using the device’s camera.
  bool? requireLiveCapture;

  ///  Capture a face image and perform a [selfie check](https://docs.stripe.com/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://docs.stripe.com/identity/selfie).
  bool? requireMatchingSelfie;

  /// Instantiates a new [GelatoReportDocumentOptions] and sets the default values.
  GelatoReportDocumentOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoReportDocumentOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoReportDocumentOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allowed_types'] = (node) => allowedTypes =
        node.getCollectionOfEnumValues<GelatoReportDocumentOptionsAllowedTypes>(
            (stringValue) => GelatoReportDocumentOptionsAllowedTypes.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['require_id_number'] =
        (node) => requireIdNumber = node.getBoolValue();
    deserializerMap['require_live_capture'] =
        (node) => requireLiveCapture = node.getBoolValue();
    deserializerMap['require_matching_selfie'] =
        (node) => requireMatchingSelfie = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<GelatoReportDocumentOptionsAllowedTypes>(
        'allowed_types', allowedTypes, (e) => e?.value);
    writer.writeBoolValue('require_id_number', value: requireIdNumber);
    writer.writeBoolValue('require_live_capture', value: requireLiveCapture);
    writer.writeBoolValue('require_matching_selfie',
        value: requireMatchingSelfie);
    writer.writeAdditionalData(additionalData);
  }
}
