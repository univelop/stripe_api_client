// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_note_refund_refund.dart';
import './credit_note_refund_type.dart';
import './credit_notes_payment_record_refund.dart';

/// auto generated
class CreditNoteRefund implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount of the refund that applies to this credit note, in cents (or local equivalent).
  int? amountRefunded;

  ///  The PaymentRecord refund details associated with this credit note refund.
  CreditNotesPaymentRecordRefund? paymentRecordRefund;

  ///  ID of the refund.
  CreditNoteRefundRefund? refund;

  ///  Type of the refund, one of `refund` or `payment_record_refund`.
  CreditNoteRefundType? type_;

  /// Instantiates a new [CreditNoteRefund] and sets the default values.
  CreditNoteRefund() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNoteRefund createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditNoteRefund();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_refunded'] =
        (node) => amountRefunded = node.getIntValue();
    deserializerMap['payment_record_refund'] = (node) => paymentRecordRefund =
        node.getObjectValue<CreditNotesPaymentRecordRefund>(
            CreditNotesPaymentRecordRefund.createFromDiscriminatorValue);
    deserializerMap['refund'] = (node) => refund =
        node.getObjectValue<CreditNoteRefundRefund>(
            CreditNoteRefundRefund.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNoteRefundType>((stringValue) =>
            CreditNoteRefundType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_refunded', amountRefunded);
    writer.writeObjectValue<CreditNotesPaymentRecordRefund>(
        'payment_record_refund', paymentRecordRefund);
    writer.writeObjectValue<CreditNoteRefundRefund>('refund', refund);
    writer.writeEnumValue<CreditNoteRefundType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
