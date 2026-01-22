// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './finalize_amount_post_request_body_fleet_cardholder_prompt_data.dart';
import './finalize_amount_post_request_body_fleet_purchase_type.dart';
import './finalize_amount_post_request_body_fleet_reported_breakdown.dart';
import './finalize_amount_post_request_body_fleet_service_type.dart';

/// auto generated
/// Fleet-specific information for authorizations using Fleet cards.
class FinalizeAmountPostRequestBodyFleet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_prompt_data property
  FinalizeAmountPostRequestBodyFleetCardholderPromptData? cardholderPromptData;

  ///  The purchase_type property
  FinalizeAmountPostRequestBodyFleetPurchaseType? purchaseType;

  ///  The reported_breakdown property
  FinalizeAmountPostRequestBodyFleetReportedBreakdown? reportedBreakdown;

  ///  The service_type property
  FinalizeAmountPostRequestBodyFleetServiceType? serviceType;

  /// Instantiates a new [FinalizeAmountPostRequestBodyFleet] and sets the default values.
  FinalizeAmountPostRequestBodyFleet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinalizeAmountPostRequestBodyFleet createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinalizeAmountPostRequestBodyFleet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<
                FinalizeAmountPostRequestBodyFleetCardholderPromptData>(
            FinalizeAmountPostRequestBodyFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_type'] = (node) => purchaseType =
        node.getEnumValue<FinalizeAmountPostRequestBodyFleetPurchaseType>(
            (stringValue) => FinalizeAmountPostRequestBodyFleetPurchaseType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reported_breakdown'] = (node) => reportedBreakdown = node
        .getObjectValue<FinalizeAmountPostRequestBodyFleetReportedBreakdown>(
            FinalizeAmountPostRequestBodyFleetReportedBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['service_type'] = (node) => serviceType =
        node.getEnumValue<FinalizeAmountPostRequestBodyFleetServiceType>(
            (stringValue) => FinalizeAmountPostRequestBodyFleetServiceType
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
            FinalizeAmountPostRequestBodyFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer.writeEnumValue<FinalizeAmountPostRequestBodyFleetPurchaseType>(
        'purchase_type', purchaseType, (e) => e?.value);
    writer
        .writeObjectValue<FinalizeAmountPostRequestBodyFleetReportedBreakdown>(
            'reported_breakdown', reportedBreakdown);
    writer.writeEnumValue<FinalizeAmountPostRequestBodyFleetServiceType>(
        'service_type', serviceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
