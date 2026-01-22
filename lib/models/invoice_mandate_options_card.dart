// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_mandate_options_card_amount_type.dart';

/// auto generated
class InvoiceMandateOptionsCard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount to be charged for future payments.
  int? amount;

  ///  One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
  InvoiceMandateOptionsCardAmountType? amountType;

  ///  A description of the mandate or subscription that is meant to be displayed to the customer.
  String? description;

  /// Instantiates a new [InvoiceMandateOptionsCard] and sets the default values.
  InvoiceMandateOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceMandateOptionsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceMandateOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType =
        node.getEnumValue<InvoiceMandateOptionsCardAmountType>((stringValue) =>
            InvoiceMandateOptionsCardAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<InvoiceMandateOptionsCardAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeAdditionalData(additionalData);
  }
}
