// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreditNotesPaymentRecordRefund implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the payment record.
  String? paymentRecord;

  ///  ID of the refund group.
  String? refundGroup;

  /// Instantiates a new [CreditNotesPaymentRecordRefund] and sets the default values.
  CreditNotesPaymentRecordRefund() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPaymentRecordRefund createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotesPaymentRecordRefund();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payment_record'] =
        (node) => paymentRecord = node.getStringValue();
    deserializerMap['refund_group'] =
        (node) => refundGroup = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('payment_record', paymentRecord);
    writer.writeStringValue('refund_group', refundGroup);
    writer.writeAdditionalData(additionalData);
  }
}
