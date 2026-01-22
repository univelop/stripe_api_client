// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './funding_instructions_bank_transfer.dart';
import './funding_instructions_funding_type.dart';
import './funding_instructions_object.dart';

/// auto generated
/// Each customer has a [`balance`](https://docs.stripe.com/api/customers/object#customer_object-balance) that isautomatically applied to future invoices and payments using the `customer_balance` payment method.Customers can fund this balance by initiating a bank transfer to any account in the`financial_addresses` field.Related guide: [Customer balance funding instructions](https://docs.stripe.com/payments/customer-balance/funding-instructions)
class FundingInstructions implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_transfer property
  FundingInstructionsBankTransfer? bankTransfer;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The `funding_type` of the returned instructions
  FundingInstructionsFundingType? fundingType;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  FundingInstructionsObject? object;

  /// Instantiates a new [FundingInstructions] and sets the default values.
  FundingInstructions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FundingInstructions createFromDiscriminatorValue(ParseNode parseNode) {
    return FundingInstructions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_transfer'] = (node) => bankTransfer =
        node.getObjectValue<FundingInstructionsBankTransfer>(
            FundingInstructionsBankTransfer.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['funding_type'] = (node) => fundingType =
        node.getEnumValue<FundingInstructionsFundingType>((stringValue) =>
            FundingInstructionsFundingType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FundingInstructionsObject>((stringValue) =>
            FundingInstructionsObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<FundingInstructionsBankTransfer>(
        'bank_transfer', bankTransfer);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<FundingInstructionsFundingType>(
        'funding_type', fundingType, (e) => e?.value);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<FundingInstructionsObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
