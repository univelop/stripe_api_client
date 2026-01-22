// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_amount.dart';
import './billing_credit_grants_resource_balance_credit_type.dart';
import './billing_credit_grants_resource_balance_credits_application_invoice_voided.dart';

/// auto generated
class BillingCreditGrantsResourceBalanceCredit
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  BillingCreditGrantsResourceAmount? amount;

  ///  Details of the invoice to which the reinstated credits were originally applied. Only present if `type` is `credits_application_invoice_voided`.
  BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided?
      creditsApplicationInvoiceVoided;

  ///  The type of credit transaction.
  BillingCreditGrantsResourceBalanceCreditType? type_;

  /// Instantiates a new [BillingCreditGrantsResourceBalanceCredit] and sets the default values.
  BillingCreditGrantsResourceBalanceCredit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceBalanceCredit createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingCreditGrantsResourceBalanceCredit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount =
        node.getObjectValue<BillingCreditGrantsResourceAmount>(
            BillingCreditGrantsResourceAmount.createFromDiscriminatorValue);
    deserializerMap['credits_application_invoice_voided'] = (node) =>
        creditsApplicationInvoiceVoided = node.getObjectValue<
                BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided>(
            BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingCreditGrantsResourceBalanceCreditType>(
            (stringValue) => BillingCreditGrantsResourceBalanceCreditType.values
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
    writer.writeObjectValue<
            BillingCreditGrantsResourceBalanceCreditsApplicationInvoiceVoided>(
        'credits_application_invoice_voided', creditsApplicationInvoiceVoided);
    writer.writeEnumValue<BillingCreditGrantsResourceBalanceCreditType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
