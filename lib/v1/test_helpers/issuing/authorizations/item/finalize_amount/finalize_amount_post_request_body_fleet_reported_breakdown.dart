// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './finalize_amount_post_request_body_fleet_reported_breakdown_fuel.dart';
import './finalize_amount_post_request_body_fleet_reported_breakdown_non_fuel.dart';
import './finalize_amount_post_request_body_fleet_reported_breakdown_tax.dart';

/// auto generated
class FinalizeAmountPostRequestBodyFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fuel property
  FinalizeAmountPostRequestBodyFleetReportedBreakdownFuel? fuel;

  ///  The non_fuel property
  FinalizeAmountPostRequestBodyFleetReportedBreakdownNonFuel? nonFuel;

  ///  The tax property
  FinalizeAmountPostRequestBodyFleetReportedBreakdownTax? tax;

  /// Instantiates a new [FinalizeAmountPostRequestBodyFleetReportedBreakdown] and sets the default values.
  FinalizeAmountPostRequestBodyFleetReportedBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinalizeAmountPostRequestBodyFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return FinalizeAmountPostRequestBodyFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            FinalizeAmountPostRequestBodyFleetReportedBreakdownFuel>(
        FinalizeAmountPostRequestBodyFleetReportedBreakdownFuel
            .createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            FinalizeAmountPostRequestBodyFleetReportedBreakdownNonFuel>(
        FinalizeAmountPostRequestBodyFleetReportedBreakdownNonFuel
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node
        .getObjectValue<FinalizeAmountPostRequestBodyFleetReportedBreakdownTax>(
            FinalizeAmountPostRequestBodyFleetReportedBreakdownTax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        FinalizeAmountPostRequestBodyFleetReportedBreakdownFuel>('fuel', fuel);
    writer.writeObjectValue<
            FinalizeAmountPostRequestBodyFleetReportedBreakdownNonFuel>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<
        FinalizeAmountPostRequestBodyFleetReportedBreakdownTax>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
