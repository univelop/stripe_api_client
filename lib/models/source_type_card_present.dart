// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeCardPresent implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The application_cryptogram property
  String? applicationCryptogram;

  ///  The application_preferred_name property
  String? applicationPreferredName;

  ///  The authorization_code property
  String? authorizationCode;

  ///  The authorization_response_code property
  String? authorizationResponseCode;

  ///  The brand property
  String? brand;

  ///  The country property
  String? country;

  ///  The cvm_type property
  String? cvmType;

  ///  The data_type property
  String? dataType;

  ///  The dedicated_file_name property
  String? dedicatedFileName;

  ///  The emv_auth_data property
  String? emvAuthData;

  ///  The evidence_customer_signature property
  String? evidenceCustomerSignature;

  ///  The evidence_transaction_certificate property
  String? evidenceTransactionCertificate;

  ///  The exp_month property
  int? expMonth;

  ///  The exp_year property
  int? expYear;

  ///  The fingerprint property
  String? fingerprint;

  ///  The funding property
  String? funding;

  ///  The last4 property
  String? last4;

  ///  The pos_device_id property
  String? posDeviceId;

  ///  The pos_entry_mode property
  String? posEntryMode;

  ///  The reader property
  String? reader;

  ///  The read_method property
  String? readMethod;

  ///  The terminal_verification_results property
  String? terminalVerificationResults;

  ///  The transaction_status_information property
  String? transactionStatusInformation;

  /// Instantiates a new [SourceTypeCardPresent] and sets the default values.
  SourceTypeCardPresent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeCardPresent createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeCardPresent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_cryptogram'] =
        (node) => applicationCryptogram = node.getStringValue();
    deserializerMap['application_preferred_name'] =
        (node) => applicationPreferredName = node.getStringValue();
    deserializerMap['authorization_code'] =
        (node) => authorizationCode = node.getStringValue();
    deserializerMap['authorization_response_code'] =
        (node) => authorizationResponseCode = node.getStringValue();
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['cvm_type'] = (node) => cvmType = node.getStringValue();
    deserializerMap['data_type'] = (node) => dataType = node.getStringValue();
    deserializerMap['dedicated_file_name'] =
        (node) => dedicatedFileName = node.getStringValue();
    deserializerMap['emv_auth_data'] =
        (node) => emvAuthData = node.getStringValue();
    deserializerMap['evidence_customer_signature'] =
        (node) => evidenceCustomerSignature = node.getStringValue();
    deserializerMap['evidence_transaction_certificate'] =
        (node) => evidenceTransactionCertificate = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['pos_device_id'] =
        (node) => posDeviceId = node.getStringValue();
    deserializerMap['pos_entry_mode'] =
        (node) => posEntryMode = node.getStringValue();
    deserializerMap['reader'] = (node) => reader = node.getStringValue();
    deserializerMap['read_method'] =
        (node) => readMethod = node.getStringValue();
    deserializerMap['terminal_verification_results'] =
        (node) => terminalVerificationResults = node.getStringValue();
    deserializerMap['transaction_status_information'] =
        (node) => transactionStatusInformation = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('application_cryptogram', applicationCryptogram);
    writer.writeStringValue(
        'application_preferred_name', applicationPreferredName);
    writer.writeStringValue('authorization_code', authorizationCode);
    writer.writeStringValue(
        'authorization_response_code', authorizationResponseCode);
    writer.writeStringValue('brand', brand);
    writer.writeStringValue('country', country);
    writer.writeStringValue('cvm_type', cvmType);
    writer.writeStringValue('data_type', dataType);
    writer.writeStringValue('dedicated_file_name', dedicatedFileName);
    writer.writeStringValue('emv_auth_data', emvAuthData);
    writer.writeStringValue(
        'evidence_customer_signature', evidenceCustomerSignature);
    writer.writeStringValue(
        'evidence_transaction_certificate', evidenceTransactionCertificate);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('pos_device_id', posDeviceId);
    writer.writeStringValue('pos_entry_mode', posEntryMode);
    writer.writeStringValue('reader', reader);
    writer.writeStringValue('read_method', readMethod);
    writer.writeStringValue(
        'terminal_verification_results', terminalVerificationResults);
    writer.writeStringValue(
        'transaction_status_information', transactionStatusInformation);
    writer.writeAdditionalData(additionalData);
  }
}
