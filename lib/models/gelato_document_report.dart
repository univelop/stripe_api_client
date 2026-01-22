// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './gelato_data_document_report_date_of_birth.dart';
import './gelato_data_document_report_expiration_date.dart';
import './gelato_data_document_report_issued_date.dart';
import './gelato_document_report_error.dart';
import './gelato_document_report_sex.dart';
import './gelato_document_report_status.dart';
import './gelato_document_report_type.dart';

/// auto generated
/// Result from a document check
class GelatoDocumentReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Address as it appears in the document.
  Address? address;

  ///  Date of birth as it appears in the document.
  GelatoDataDocumentReportDateOfBirth? dob;

  ///  Details on the verification error. Present when status is `unverified`.
  GelatoDocumentReportError? error;

  ///  Expiration date of the document.
  GelatoDataDocumentReportExpirationDate? expirationDate;

  ///  Array of [File](https://docs.stripe.com/api/files) ids containing images for this document.
  Iterable<String>? files;

  ///  First name as it appears in the document.
  String? firstName;

  ///  Issued date of the document.
  GelatoDataDocumentReportIssuedDate? issuedDate;

  ///  Issuing country of the document.
  String? issuingCountry;

  ///  Last name as it appears in the document.
  String? lastName;

  ///  Document ID number.
  String? number;

  ///  Sex of the person in the document.
  GelatoDocumentReportSex? sex;

  ///  Status of this `document` check.
  GelatoDocumentReportStatus? status;

  ///  Type of the document.
  GelatoDocumentReportType? type_;

  ///  Place of birth as it appears in the document.
  String? unparsedPlaceOfBirth;

  ///  Sex as it appears in the document.
  String? unparsedSex;

  /// Instantiates a new [GelatoDocumentReport] and sets the default values.
  GelatoDocumentReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoDocumentReport createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoDocumentReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<GelatoDataDocumentReportDateOfBirth>(
            GelatoDataDocumentReportDateOfBirth.createFromDiscriminatorValue);
    deserializerMap['error'] = (node) => error =
        node.getObjectValue<GelatoDocumentReportError>(
            GelatoDocumentReportError.createFromDiscriminatorValue);
    deserializerMap['expiration_date'] = (node) => expirationDate =
        node.getObjectValue<GelatoDataDocumentReportExpirationDate>(
            GelatoDataDocumentReportExpirationDate
                .createFromDiscriminatorValue);
    deserializerMap['files'] =
        (node) => files = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['issued_date'] = (node) => issuedDate =
        node.getObjectValue<GelatoDataDocumentReportIssuedDate>(
            GelatoDataDocumentReportIssuedDate.createFromDiscriminatorValue);
    deserializerMap['issuing_country'] =
        (node) => issuingCountry = node.getStringValue();
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['sex'] = (node) => sex =
        node.getEnumValue<GelatoDocumentReportSex>((stringValue) =>
            GelatoDocumentReportSex.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<GelatoDocumentReportStatus>((stringValue) =>
            GelatoDocumentReportStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<GelatoDocumentReportType>((stringValue) =>
            GelatoDocumentReportType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unparsed_place_of_birth'] =
        (node) => unparsedPlaceOfBirth = node.getStringValue();
    deserializerMap['unparsed_sex'] =
        (node) => unparsedSex = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<GelatoDataDocumentReportDateOfBirth>('dob', dob);
    writer.writeObjectValue<GelatoDocumentReportError>('error', error);
    writer.writeObjectValue<GelatoDataDocumentReportExpirationDate>(
        'expiration_date', expirationDate);
    writer.writeCollectionOfPrimitiveValues<String?>('files', files);
    writer.writeStringValue('first_name', firstName);
    writer.writeObjectValue<GelatoDataDocumentReportIssuedDate>(
        'issued_date', issuedDate);
    writer.writeStringValue('issuing_country', issuingCountry);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<GelatoDocumentReportSex>('sex', sex, (e) => e?.value);
    writer.writeEnumValue<GelatoDocumentReportStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<GelatoDocumentReportType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('unparsed_place_of_birth', unparsedPlaceOfBirth);
    writer.writeStringValue('unparsed_sex', unparsedSex);
    writer.writeAdditionalData(additionalData);
  }
}
