// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../gelato_document_report.dart';
import '../gelato_email_report.dart';
import '../gelato_id_number_report.dart';
import '../gelato_phone_report.dart';
import '../gelato_selfie_report.dart';
import '../gelato_verification_report_options.dart';
import './verification_report_object.dart';
import './verification_report_type.dart';

/// auto generated
/// A VerificationReport is the result of an attempt to collect and verify data from a user.The collection of verification checks performed is determined from the `type` and `options`parameters used. You can find the result of each verification check performed in theappropriate sub-resource: `document`, `id_number`, `selfie`.Each VerificationReport contains a copy of any data collected by the user as well asreference IDs which can be used to access collected images through the [FileUpload](https://docs.stripe.com/api/files)API. To configure and create VerificationReports, use the[VerificationSession](https://docs.stripe.com/api/identity/verification_sessions) API.Related guide: [Accessing verification results](https://docs.stripe.com/identity/verification-sessions#results).
class VerificationReport implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
  String? clientReferenceId;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Result from a document check
  GelatoDocumentReport? document;

  ///  Result from a email check
  GelatoEmailReport? email;

  ///  Unique identifier for the object.
  String? id;

  ///  Result from an id_number check
  GelatoIdNumberReport? idNumber;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  VerificationReportObject? object;

  ///  The options property
  GelatoVerificationReportOptions? options;

  ///  Result from a phone check
  GelatoPhoneReport? phone;

  ///  Result from a selfie check
  GelatoSelfieReport? selfie;

  ///  Type of report.
  VerificationReportType? type_;

  ///  The configuration token of a verification flow from the dashboard.
  String? verificationFlow;

  ///  ID of the VerificationSession that created this report.
  String? verificationSession;

  /// Instantiates a new [VerificationReport] and sets the default values.
  VerificationReport() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationReport createFromDiscriminatorValue(ParseNode parseNode) {
    return VerificationReport();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['client_reference_id'] =
        (node) => clientReferenceId = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<GelatoDocumentReport>(
            GelatoDocumentReport.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email =
        node.getObjectValue<GelatoEmailReport>(
            GelatoEmailReport.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['id_number'] = (node) => idNumber =
        node.getObjectValue<GelatoIdNumberReport>(
            GelatoIdNumberReport.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<VerificationReportObject>((stringValue) =>
            VerificationReportObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['options'] = (node) => options =
        node.getObjectValue<GelatoVerificationReportOptions>(
            GelatoVerificationReportOptions.createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<GelatoPhoneReport>(
            GelatoPhoneReport.createFromDiscriminatorValue);
    deserializerMap['selfie'] = (node) => selfie =
        node.getObjectValue<GelatoSelfieReport>(
            GelatoSelfieReport.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<VerificationReportType>((stringValue) =>
            VerificationReportType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['verification_flow'] =
        (node) => verificationFlow = node.getStringValue();
    deserializerMap['verification_session'] =
        (node) => verificationSession = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('client_reference_id', clientReferenceId);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<GelatoDocumentReport>('document', document);
    writer.writeObjectValue<GelatoEmailReport>('email', email);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<GelatoIdNumberReport>('id_number', idNumber);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<VerificationReportObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<GelatoVerificationReportOptions>(
        'options', options);
    writer.writeObjectValue<GelatoPhoneReport>('phone', phone);
    writer.writeObjectValue<GelatoSelfieReport>('selfie', selfie);
    writer.writeEnumValue<VerificationReportType>(
        'type', type_, (e) => e?.value);
    writer.writeStringValue('verification_flow', verificationFlow);
    writer.writeStringValue('verification_session', verificationSession);
    writer.writeAdditionalData(additionalData);
  }
}
