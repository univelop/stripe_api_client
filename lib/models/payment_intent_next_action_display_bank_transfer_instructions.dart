// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_bank_transfer_financial_address.dart';
import './payment_intent_next_action_display_bank_transfer_instructions_type.dart';

/// auto generated
class PaymentIntentNextActionDisplayBankTransferInstructions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The remaining amount that needs to be transferred to complete the payment.
  int? amountRemaining;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  A list of financial addresses that can be used to fund the customer balance
  Iterable<FundingInstructionsBankTransferFinancialAddress>? financialAddresses;

  ///  A link to a hosted page that guides your customer through completing the transfer.
  String? hostedInstructionsUrl;

  ///  A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
  String? reference;

  ///  Type of bank transfer
  PaymentIntentNextActionDisplayBankTransferInstructionsType? type_;

  /// Instantiates a new [PaymentIntentNextActionDisplayBankTransferInstructions] and sets the default values.
  PaymentIntentNextActionDisplayBankTransferInstructions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextActionDisplayBankTransferInstructions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentNextActionDisplayBankTransferInstructions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_remaining'] =
        (node) => amountRemaining = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['financial_addresses'] = (node) => financialAddresses =
        node.getCollectionOfObjectValues<
                FundingInstructionsBankTransferFinancialAddress>(
            FundingInstructionsBankTransferFinancialAddress
                .createFromDiscriminatorValue);
    deserializerMap['hosted_instructions_url'] =
        (node) => hostedInstructionsUrl = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            PaymentIntentNextActionDisplayBankTransferInstructionsType>(
        (stringValue) =>
            PaymentIntentNextActionDisplayBankTransferInstructionsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_remaining', amountRemaining);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfObjectValues<
            FundingInstructionsBankTransferFinancialAddress>(
        'financial_addresses', financialAddresses);
    writer.writeStringValue('hosted_instructions_url', hostedInstructionsUrl);
    writer.writeStringValue('reference', reference);
    writer.writeEnumValue<
            PaymentIntentNextActionDisplayBankTransferInstructionsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
