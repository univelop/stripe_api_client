// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_email_report_error_code.dart';

/// auto generated
class GelatoEmailReportError implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A short machine-readable string giving the reason for the verification failure.
  GelatoEmailReportErrorCode? code;

  ///  A human-readable message giving the reason for the failure. These messages can be shown to your users.
  String? reason;

  /// Instantiates a new [GelatoEmailReportError] and sets the default values.
  GelatoEmailReportError() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoEmailReportError createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoEmailReportError();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['code'] = (node) => code =
        node.getEnumValue<GelatoEmailReportErrorCode>((stringValue) =>
            GelatoEmailReportErrorCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<GelatoEmailReportErrorCode>(
        'code', code, (e) => e?.value);
    writer.writeStringValue('reason', reason);
    writer.writeAdditionalData(additionalData);
  }
}
