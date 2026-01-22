// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_selfie_report_error.dart';
import './gelato_selfie_report_status.dart';

/// auto generated
/// Result from a selfie check
class GelatoSelfieReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the [File](https://docs.stripe.com/api/files) holding the image of the identity document used in this check.
  String? document;

  ///  Details on the verification error. Present when status is `unverified`.
  GelatoSelfieReportError? error;

  ///  ID of the [File](https://docs.stripe.com/api/files) holding the image of the selfie used in this check.
  String? selfie;

  ///  Status of this `selfie` check.
  GelatoSelfieReportStatus? status;

  /// Instantiates a new [GelatoSelfieReport] and sets the default values.
  GelatoSelfieReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoSelfieReport createFromDiscriminatorValue(ParseNode parseNode) {
    return GelatoSelfieReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['document'] = (node) => document = node.getStringValue();
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<GelatoSelfieReportError>(
            GelatoSelfieReportError.createFromDiscriminatorValue);
    deserializerMap['selfie'] = (node) => selfie = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<GelatoSelfieReportStatus>((stringValue) =>
            GelatoSelfieReportStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('document', document);
    writer.writeObjectValue<GelatoSelfieReportError>('error', error);
    writer.writeStringValue('selfie', selfie);
    writer.writeEnumValue<GelatoSelfieReportStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
