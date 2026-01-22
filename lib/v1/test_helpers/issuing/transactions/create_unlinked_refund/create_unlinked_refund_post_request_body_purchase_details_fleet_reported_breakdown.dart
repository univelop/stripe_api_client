// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_reported_breakdown_fuel.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_reported_breakdown_non_fuel.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_reported_breakdown_tax.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fuel property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel?
      fuel;

  ///  The non_fuel property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel?
      nonFuel;

  ///  The tax property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax?
      tax;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel
            .createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownFuel>(
        'fuel', fuel);
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownNonFuel>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdownTax>(
        'tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
