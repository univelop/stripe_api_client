// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_cardholder_prompt_data.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_purchase_type.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_reported_breakdown.dart';
import './create_unlinked_refund_post_request_body_purchase_details_fleet_service_type.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_prompt_data property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetCardholderPromptData?
      cardholderPromptData;

  ///  The purchase_type property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetPurchaseType?
      purchaseType;

  ///  The reported_breakdown property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown?
      reportedBreakdown;

  ///  The service_type property
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetServiceType?
      serviceType;

  /// Instantiates a new [CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet] and sets the default values.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<
                CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetCardholderPromptData>(
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap[
        'purchase_type'] = (node) => purchaseType = node.getEnumValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetPurchaseType>(
        (stringValue) =>
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetPurchaseType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'reported_breakdown'] = (node) => reportedBreakdown = node.getObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown>(
        CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown
            .createFromDiscriminatorValue);
    deserializerMap['service_type'] = (node) => serviceType = node.getEnumValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetServiceType>(
        (stringValue) =>
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetServiceType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer.writeEnumValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetPurchaseType>(
        'purchase_type', purchaseType, (e) => e?.value);
    writer.writeObjectValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetReportedBreakdown>(
        'reported_breakdown', reportedBreakdown);
    writer.writeEnumValue<
            CreateUnlinkedRefundPostRequestBodyPurchaseDetailsFleetServiceType>(
        'service_type', serviceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
