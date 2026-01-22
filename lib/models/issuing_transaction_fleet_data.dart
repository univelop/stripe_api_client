// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_transaction_fleet_cardholder_prompt_data.dart';
import './issuing_transaction_fleet_reported_breakdown.dart';

/// auto generated
class IssuingTransactionFleetData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Answers to prompts presented to cardholder at point of sale.
  IssuingTransactionFleetCardholderPromptData? cardholderPromptData;

  ///  The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
  String? purchaseType;

  ///  More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
  IssuingTransactionFleetReportedBreakdown? reportedBreakdown;

  ///  The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
  String? serviceType;

  /// Instantiates a new [IssuingTransactionFleetData] and sets the default values.
  IssuingTransactionFleetData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionFleetData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionFleetData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<IssuingTransactionFleetCardholderPromptData>(
            IssuingTransactionFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_type'] =
        (node) => purchaseType = node.getStringValue();
    deserializerMap['reported_breakdown'] = (node) => reportedBreakdown =
        node.getObjectValue<IssuingTransactionFleetReportedBreakdown>(
            IssuingTransactionFleetReportedBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['service_type'] =
        (node) => serviceType = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingTransactionFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer.writeStringValue('purchase_type', purchaseType);
    writer.writeObjectValue<IssuingTransactionFleetReportedBreakdown>(
        'reported_breakdown', reportedBreakdown);
    writer.writeStringValue('service_type', serviceType);
    writer.writeAdditionalData(additionalData);
  }
}
