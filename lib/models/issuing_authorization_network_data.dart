// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingAuthorizationNetworkData
    implements AdditionalDataHolder, Parsable {
  ///  Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
  String? acquiringInstitutionId;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
  String? systemTraceAuditNumber;

  ///  Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
  String? transactionId;

  /// Instantiates a new [IssuingAuthorizationNetworkData] and sets the default values.
  IssuingAuthorizationNetworkData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationNetworkData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationNetworkData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acquiring_institution_id'] =
        (node) => acquiringInstitutionId = node.getStringValue();
    deserializerMap['system_trace_audit_number'] =
        (node) => systemTraceAuditNumber = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('acquiring_institution_id', acquiringInstitutionId);
    writer.writeStringValue(
        'system_trace_audit_number', systemTraceAuditNumber);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
