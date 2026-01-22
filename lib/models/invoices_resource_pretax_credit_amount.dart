// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_resource_pretax_credit_amount_credit_balance_transaction.dart';
import './invoices_resource_pretax_credit_amount_discount.dart';
import './invoices_resource_pretax_credit_amount_type.dart';

/// auto generated
class InvoicesResourcePretaxCreditAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount, in cents (or local equivalent), of the pretax credit amount.
  int? amount;

  ///  The credit balance transaction that was applied to get this pretax credit amount.
  InvoicesResourcePretaxCreditAmountCreditBalanceTransaction?
      creditBalanceTransaction;

  ///  The discount that was applied to get this pretax credit amount.
  InvoicesResourcePretaxCreditAmountDiscount? discount;

  ///  Type of the pretax credit amount referenced.
  InvoicesResourcePretaxCreditAmountType? type_;

  /// Instantiates a new [InvoicesResourcePretaxCreditAmount] and sets the default values.
  InvoicesResourcePretaxCreditAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourcePretaxCreditAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesResourcePretaxCreditAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['credit_balance_transaction'] = (node) =>
        creditBalanceTransaction = node.getObjectValue<
                InvoicesResourcePretaxCreditAmountCreditBalanceTransaction>(
            InvoicesResourcePretaxCreditAmountCreditBalanceTransaction
                .createFromDiscriminatorValue);
    deserializerMap['discount'] = (node) => discount =
        node.getObjectValue<InvoicesResourcePretaxCreditAmountDiscount>(
            InvoicesResourcePretaxCreditAmountDiscount
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<InvoicesResourcePretaxCreditAmountType>(
            (stringValue) => InvoicesResourcePretaxCreditAmountType.values
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
            InvoicesResourcePretaxCreditAmountCreditBalanceTransaction>(
        'credit_balance_transaction', creditBalanceTransaction);
    writer.writeObjectValue<InvoicesResourcePretaxCreditAmountDiscount>(
        'discount', discount);
    writer.writeEnumValue<InvoicesResourcePretaxCreditAmountType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
