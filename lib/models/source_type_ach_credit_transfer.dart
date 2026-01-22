// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeAchCreditTransfer implements AdditionalDataHolder, Parsable {
  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_name property
  String? bankName;

  ///  The fingerprint property
  String? fingerprint;

  ///  The refund_account_holder_name property
  String? refundAccountHolderName;

  ///  The refund_account_holder_type property
  String? refundAccountHolderType;

  ///  The refund_routing_number property
  String? refundRoutingNumber;

  ///  The routing_number property
  String? routingNumber;

  ///  The swift_code property
  String? swiftCode;

  /// Instantiates a new [SourceTypeAchCreditTransfer] and sets the default values.
  SourceTypeAchCreditTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeAchCreditTransfer createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeAchCreditTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['refund_account_holder_name'] =
        (node) => refundAccountHolderName = node.getStringValue();
    deserializerMap['refund_account_holder_type'] =
        (node) => refundAccountHolderType = node.getStringValue();
    deserializerMap['refund_routing_number'] =
        (node) => refundRoutingNumber = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    deserializerMap['swift_code'] = (node) => swiftCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue(
        'refund_account_holder_name', refundAccountHolderName);
    writer.writeStringValue(
        'refund_account_holder_type', refundAccountHolderType);
    writer.writeStringValue('refund_routing_number', refundRoutingNumber);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeStringValue('swift_code', swiftCode);
    writer.writeAdditionalData(additionalData);
  }
}
