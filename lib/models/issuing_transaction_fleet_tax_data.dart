// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionFleetTaxData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount of state or provincial Sales Tax included in the transaction amount. Null if not reported by merchant or not subject to tax.
  String? localAmountDecimal;

  ///  Amount of national Sales Tax or VAT included in the transaction amount. Null if not reported by merchant or not subject to tax.
  String? nationalAmountDecimal;

  /// Instantiates a new [IssuingTransactionFleetTaxData] and sets the default values.
  IssuingTransactionFleetTaxData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFleetTaxData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionFleetTaxData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['local_amount_decimal'] =
        (node) => localAmountDecimal = node.getStringValue();
    deserializerMap['national_amount_decimal'] =
        (node) => nationalAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('local_amount_decimal', localAmountDecimal);
    writer.writeStringValue('national_amount_decimal', nationalAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
