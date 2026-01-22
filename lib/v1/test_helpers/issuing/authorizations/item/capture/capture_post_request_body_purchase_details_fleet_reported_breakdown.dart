// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_purchase_details_fleet_reported_breakdown_fuel.dart';
import './capture_post_request_body_purchase_details_fleet_reported_breakdown_non_fuel.dart';
import './capture_post_request_body_purchase_details_fleet_reported_breakdown_tax.dart';

/// auto generated
class CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fuel property
  CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel? fuel;

  ///  The non_fuel property
  CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel? nonFuel;

  ///  The tax property
  CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax? tax;

  /// Instantiates a new [CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown] and sets the default values.
  CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel
            .createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        'fuel', fuel);
    writer.writeObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
