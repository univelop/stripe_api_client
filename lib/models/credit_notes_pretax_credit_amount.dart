// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_notes_pretax_credit_amount_credit_balance_transaction.dart';
import './credit_notes_pretax_credit_amount_discount.dart';
import './credit_notes_pretax_credit_amount_type.dart';

/// auto generated
class CreditNotesPretaxCreditAmount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount, in cents (or local equivalent), of the pretax credit amount.
  int? amount;

  ///  The credit balance transaction that was applied to get this pretax credit amount.
  CreditNotesPretaxCreditAmountCreditBalanceTransaction?
      creditBalanceTransaction;

  ///  The discount that was applied to get this pretax credit amount.
  CreditNotesPretaxCreditAmountDiscount? discount;

  ///  Type of the pretax credit amount referenced.
  CreditNotesPretaxCreditAmountType? type_;

  /// Instantiates a new [CreditNotesPretaxCreditAmount] and sets the default values.
  CreditNotesPretaxCreditAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotesPretaxCreditAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotesPretaxCreditAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['credit_balance_transaction'] = (node) =>
        creditBalanceTransaction = node.getObjectValue<
                CreditNotesPretaxCreditAmountCreditBalanceTransaction>(
            CreditNotesPretaxCreditAmountCreditBalanceTransaction
                .createFromDiscriminatorValue);
    deserializerMap['discount'] = (node) => discount =
        node.getObjectValue<CreditNotesPretaxCreditAmountDiscount>(
            CreditNotesPretaxCreditAmountDiscount.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditNotesPretaxCreditAmountType>((stringValue) =>
            CreditNotesPretaxCreditAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<
            CreditNotesPretaxCreditAmountCreditBalanceTransaction>(
        'credit_balance_transaction', creditBalanceTransaction);
    writer.writeObjectValue<CreditNotesPretaxCreditAmountDiscount>(
        'discount', discount);
    writer.writeEnumValue<CreditNotesPretaxCreditAmountType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
