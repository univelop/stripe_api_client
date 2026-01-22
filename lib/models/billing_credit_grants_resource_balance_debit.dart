// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_amount.dart';
import './billing_credit_grants_resource_balance_credits_applied.dart';
import './billing_credit_grants_resource_balance_debit_type.dart';

/// auto generated
class BillingCreditGrantsResourceBalanceDebit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  BillingCreditGrantsResourceAmount? amount;

  ///  Details of how the billing credits were applied to an invoice. Only present if `type` is `credits_applied`.
  BillingCreditGrantsResourceBalanceCreditsApplied? creditsApplied;

  ///  The type of debit transaction.
  BillingCreditGrantsResourceBalanceDebitType? type_;

  /// Instantiates a new [BillingCreditGrantsResourceBalanceDebit] and sets the default values.
  BillingCreditGrantsResourceBalanceDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceBalanceDebit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingCreditGrantsResourceBalanceDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<BillingCreditGrantsResourceAmount>(
            BillingCreditGrantsResourceAmount.createFromDiscriminatorValue);
    deserializerMap['credits_applied'] = (node) => creditsApplied =
        node.getObjectValue<BillingCreditGrantsResourceBalanceCreditsApplied>(
            BillingCreditGrantsResourceBalanceCreditsApplied
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingCreditGrantsResourceBalanceDebitType>(
            (stringValue) => BillingCreditGrantsResourceBalanceDebitType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BillingCreditGrantsResourceAmount>(
        'amount', amount);
    writer.writeObjectValue<BillingCreditGrantsResourceBalanceCreditsApplied>(
        'credits_applied', creditsApplied);
    writer.writeEnumValue<BillingCreditGrantsResourceBalanceDebitType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
