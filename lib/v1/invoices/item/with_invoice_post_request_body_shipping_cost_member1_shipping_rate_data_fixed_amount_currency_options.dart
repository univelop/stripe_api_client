// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmountCurrencyOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmountCurrencyOptions] and sets the default values.
  WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmountCurrencyOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmountCurrencyOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyShippingCostMember1ShippingRateDataFixedAmountCurrencyOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeAdditionalData(additionalData);
  }
}
