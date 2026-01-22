// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingAuthorizationFleetFuelPriceData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Gross fuel amount that should equal Fuel Quantity multiplied by Fuel Unit Cost, inclusive of taxes.
  String? grossAmountDecimal;

  /// Instantiates a new [IssuingAuthorizationFleetFuelPriceData] and sets the default values.
  IssuingAuthorizationFleetFuelPriceData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationFleetFuelPriceData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationFleetFuelPriceData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['gross_amount_decimal'] =
        (node) => grossAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('gross_amount_decimal', grossAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
