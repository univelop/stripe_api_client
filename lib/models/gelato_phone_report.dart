// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_phone_report_error.dart';
import './gelato_phone_report_status.dart';

/// auto generated
/// Result from a phone check
class GelatoPhoneReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details on the verification error. Present when status is `unverified`.
  GelatoPhoneReportError? error;

  ///  Phone to be verified.
  String? phone;

  ///  Status of this `phone` check.
  GelatoPhoneReportStatus? status;

  /// Instantiates a new [GelatoPhoneReport] and sets the default values.
  GelatoPhoneReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoPhoneReport createFromDiscriminatorValue(ParseNode parseNode) {
    return GelatoPhoneReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<GelatoPhoneReportError>(
            GelatoPhoneReportError.createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<GelatoPhoneReportStatus>((stringValue) =>
            GelatoPhoneReportStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<GelatoPhoneReportError>('error', error);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<GelatoPhoneReportStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
