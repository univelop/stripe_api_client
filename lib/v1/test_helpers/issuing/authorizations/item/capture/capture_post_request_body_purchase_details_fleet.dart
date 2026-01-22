// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_purchase_details_fleet_cardholder_prompt_data.dart';
import './capture_post_request_body_purchase_details_fleet_purchase_type.dart';
import './capture_post_request_body_purchase_details_fleet_reported_breakdown.dart';
import './capture_post_request_body_purchase_details_fleet_service_type.dart';

/// auto generated
class CapturePostRequestBodyPurchaseDetailsFleet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_prompt_data property
  CapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData?
      cardholderPromptData;

  ///  The purchase_type property
  CapturePostRequestBodyPurchaseDetailsFleetPurchaseType? purchaseType;

  ///  The reported_breakdown property
  CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown?
      reportedBreakdown;

  ///  The service_type property
  CapturePostRequestBodyPurchaseDetailsFleetServiceType? serviceType;

  /// Instantiates a new [CapturePostRequestBodyPurchaseDetailsFleet] and sets the default values.
  CapturePostRequestBodyPurchaseDetailsFleet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyPurchaseDetailsFleet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CapturePostRequestBodyPurchaseDetailsFleet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<
                CapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData>(
            CapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_type'] = (node) => purchaseType = node
        .getEnumValue<CapturePostRequestBodyPurchaseDetailsFleetPurchaseType>(
            (stringValue) =>
                CapturePostRequestBodyPurchaseDetailsFleetPurchaseType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['reported_breakdown'] = (node) => reportedBreakdown =
        node.getObjectValue<
                CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown>(
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['service_type'] = (node) => serviceType = node
        .getEnumValue<CapturePostRequestBodyPurchaseDetailsFleetServiceType>(
            (stringValue) =>
                CapturePostRequestBodyPurchaseDetailsFleetServiceType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer
        .writeEnumValue<CapturePostRequestBodyPurchaseDetailsFleetPurchaseType>(
            'purchase_type', purchaseType, (e) => e?.value);
    writer.writeObjectValue<
            CapturePostRequestBodyPurchaseDetailsFleetReportedBreakdown>(
        'reported_breakdown', reportedBreakdown);
    writer
        .writeEnumValue<CapturePostRequestBodyPurchaseDetailsFleetServiceType>(
            'service_type', serviceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
