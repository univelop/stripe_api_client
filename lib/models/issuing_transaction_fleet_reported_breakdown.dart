// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_transaction_fleet_fuel_price_data.dart';
import './issuing_transaction_fleet_non_fuel_price_data.dart';
import './issuing_transaction_fleet_tax_data.dart';

/// auto generated
class IssuingTransactionFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Breakdown of fuel portion of the purchase.
  IssuingTransactionFleetFuelPriceData? fuel;

  ///  Breakdown of non-fuel portion of the purchase.
  IssuingTransactionFleetNonFuelPriceData? nonFuel;

  ///  Information about tax included in this transaction.
  IssuingTransactionFleetTaxData? tax;

  /// Instantiates a new [IssuingTransactionFleetReportedBreakdown] and sets the default values.
  IssuingTransactionFleetReportedBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFleetReportedBreakdown createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel =
        node.getObjectValue<IssuingTransactionFleetFuelPriceData>(
            IssuingTransactionFleetFuelPriceData.createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            IssuingTransactionFleetNonFuelPriceData>(
        IssuingTransactionFleetNonFuelPriceData.createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<IssuingTransactionFleetTaxData>(
            IssuingTransactionFleetTaxData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingTransactionFleetFuelPriceData>('fuel', fuel);
    writer.writeObjectValue<IssuingTransactionFleetNonFuelPriceData>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<IssuingTransactionFleetTaxData>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
