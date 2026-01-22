// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_force_capture_post_request_body_purchase_details_fleet_reported_breakdown_fuel.dart';
import './create_force_capture_post_request_body_purchase_details_fleet_reported_breakdown_non_fuel.dart';
import './create_force_capture_post_request_body_purchase_details_fleet_reported_breakdown_tax.dart';

/// auto generated
class CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fuel property
  CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel?
      fuel;

  ///  The non_fuel property
  CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel?
      nonFuel;

  ///  The tax property
  CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax?
      tax;

  /// Instantiates a new [CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown] and sets the default values.
  CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel
            .createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        'fuel', fuel);
    writer.writeObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<
            CreateForceCapturePostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
