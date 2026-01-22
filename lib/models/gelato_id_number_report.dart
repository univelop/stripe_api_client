// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './gelato_data_id_number_report_date.dart';
import './gelato_id_number_report_error.dart';
import './gelato_id_number_report_id_number_type.dart';
import './gelato_id_number_report_status.dart';

/// auto generated
/// Result from an id_number check
class GelatoIdNumberReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Date of birth.
  GelatoDataIdNumberReportDate? dob;

  ///  Details on the verification error. Present when status is `unverified`.
  GelatoIdNumberReportError? error;

  ///  First name.
  String? firstName;

  ///  ID number. When `id_number_type` is `us_ssn`, only the last 4 digits are present.
  String? idNumber;

  ///  Type of ID number.
  GelatoIdNumberReportIdNumberType? idNumberType;

  ///  Last name.
  String? lastName;

  ///  Status of this `id_number` check.
  GelatoIdNumberReportStatus? status;

  /// Instantiates a new [GelatoIdNumberReport] and sets the default values.
  GelatoIdNumberReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoIdNumberReport createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoIdNumberReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<GelatoDataIdNumberReportDate>(
            GelatoDataIdNumberReportDate.createFromDiscriminatorValue);
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<GelatoIdNumberReportError>(
            GelatoIdNumberReportError.createFromDiscriminatorValue);
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['id_number'] = (node) => idNumber = node.getStringValue();
    deserializerMap['id_number_type'] = (node) => idNumberType =
        node.getEnumValue<GelatoIdNumberReportIdNumberType>((stringValue) =>
            GelatoIdNumberReportIdNumberType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<GelatoIdNumberReportStatus>((stringValue) =>
            GelatoIdNumberReportStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<GelatoDataIdNumberReportDate>('dob', dob);
    writer.writeObjectValue<GelatoIdNumberReportError>('error', error);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('id_number', idNumber);
    writer.writeEnumValue<GelatoIdNumberReportIdNumberType>(
        'id_number_type', idNumberType, (e) => e?.value);
    writer.writeStringValue('last_name', lastName);
    writer.writeEnumValue<GelatoIdNumberReportStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
