// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_notes_post_request_body_refunds_payment_record_refund.dart';
import './credit_notes_post_request_body_refunds_type.dart';

/// auto generated
class CreditNotesPostRequestBodyRefunds
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_refunded property
  int? amountRefunded;

  ///  The payment_record_refund property
  CreditNotesPostRequestBodyRefundsPaymentRecordRefund? paymentRecordRefund;

  ///  The refund property
  String? refund;

  ///  The type property
  CreditNotesPostRequestBodyRefundsType? type_;

  /// Instantiates a new [CreditNotesPostRequestBodyRefunds] and sets the default values.
  CreditNotesPostRequestBodyRefunds() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPostRequestBodyRefunds createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotesPostRequestBodyRefunds();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_refunded'] =
        (node) => amountRefunded = node.getIntValue();
    deserializerMap['payment_record_refund'] = (node) => paymentRecordRefund =
        node.getObjectValue<
                CreditNotesPostRequestBodyRefundsPaymentRecordRefund>(
            CreditNotesPostRequestBodyRefundsPaymentRecordRefund
                .createFromDiscriminatorValue);
    deserializerMap['refund'] = (node) => refund = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNotesPostRequestBodyRefundsType>(
            (stringValue) => CreditNotesPostRequestBodyRefundsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_refunded', amountRefunded);
    writer
        .writeObjectValue<CreditNotesPostRequestBodyRefundsPaymentRecordRefund>(
            'payment_record_refund', paymentRecordRefund);
    writer.writeStringValue('refund', refund);
    writer.writeEnumValue<CreditNotesPostRequestBodyRefundsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
