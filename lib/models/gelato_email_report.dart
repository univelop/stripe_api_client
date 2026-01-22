// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_email_report_error.dart';
import './gelato_email_report_status.dart';

/// auto generated
/// Result from a email check
class GelatoEmailReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Email to be verified.
  String? email;

  ///  Details on the verification error. Present when status is `unverified`.
  GelatoEmailReportError? error;

  ///  Status of this `email` check.
  GelatoEmailReportStatus? status;

  /// Instantiates a new [GelatoEmailReport] and sets the default values.
  GelatoEmailReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoEmailReport createFromDiscriminatorValue(ParseNode parseNode) {
    return GelatoEmailReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<GelatoEmailReportError>(
            GelatoEmailReportError.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<GelatoEmailReportStatus>((stringValue) =>
            GelatoEmailReportStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('email', email);
    writer.writeObjectValue<GelatoEmailReportError>('error', error);
    writer.writeEnumValue<GelatoEmailReportStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
