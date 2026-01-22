// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsAmountDetailsResourceTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The total amount of tax on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L2 rates. An integer greater than or equal to 0.This field is mutually exclusive with the `amount_details[line_items][#][tax][total_tax_amount]` field.
  int? totalTaxAmount;

  /// Instantiates a new [PaymentFlowsAmountDetailsResourceTax] and sets the default values.
  PaymentFlowsAmountDetailsResourceTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAmountDetailsResourceTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentFlowsAmountDetailsResourceTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['total_tax_amount'] =
        (node) => totalTaxAmount = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('total_tax_amount', totalTaxAmount);
    writer.writeAdditionalData(additionalData);
  }
}
