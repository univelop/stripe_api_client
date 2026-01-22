// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_fleet_fuel_price_data.dart';
import './issuing_authorization_fleet_non_fuel_price_data.dart';
import './issuing_authorization_fleet_tax_data.dart';

/// auto generated
class IssuingAuthorizationFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Breakdown of fuel portion of the purchase.
  IssuingAuthorizationFleetFuelPriceData? fuel;

  ///  Breakdown of non-fuel portion of the purchase.
  IssuingAuthorizationFleetNonFuelPriceData? nonFuel;

  ///  Information about tax included in this transaction.
  IssuingAuthorizationFleetTaxData? tax;

  /// Instantiates a new [IssuingAuthorizationFleetReportedBreakdown] and sets the default values.
  IssuingAuthorizationFleetReportedBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingAuthorizationFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            IssuingAuthorizationFleetFuelPriceData>(
        IssuingAuthorizationFleetFuelPriceData.createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            IssuingAuthorizationFleetNonFuelPriceData>(
        IssuingAuthorizationFleetNonFuelPriceData.createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<IssuingAuthorizationFleetTaxData>(
            IssuingAuthorizationFleetTaxData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingAuthorizationFleetFuelPriceData>(
        'fuel', fuel);
    writer.writeObjectValue<IssuingAuthorizationFleetNonFuelPriceData>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<IssuingAuthorizationFleetTaxData>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
