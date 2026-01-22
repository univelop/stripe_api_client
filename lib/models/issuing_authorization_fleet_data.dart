// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_fleet_cardholder_prompt_data.dart';
import './issuing_authorization_fleet_data_purchase_type.dart';
import './issuing_authorization_fleet_data_service_type.dart';
import './issuing_authorization_fleet_reported_breakdown.dart';

/// auto generated
class IssuingAuthorizationFleetData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
  IssuingAuthorizationFleetCardholderPromptData? cardholderPromptData;

  ///  The type of purchase.
  IssuingAuthorizationFleetDataPurchaseType? purchaseType;

  ///  More information about the total amount. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
  IssuingAuthorizationFleetReportedBreakdown? reportedBreakdown;

  ///  The type of fuel service.
  IssuingAuthorizationFleetDataServiceType? serviceType;

  /// Instantiates a new [IssuingAuthorizationFleetData] and sets the default values.
  IssuingAuthorizationFleetData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationFleetData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationFleetData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<IssuingAuthorizationFleetCardholderPromptData>(
            IssuingAuthorizationFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_type'] = (node) => purchaseType =
        node.getEnumValue<IssuingAuthorizationFleetDataPurchaseType>(
            (stringValue) => IssuingAuthorizationFleetDataPurchaseType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reported_breakdown'] = (node) => reportedBreakdown =
        node.getObjectValue<IssuingAuthorizationFleetReportedBreakdown>(
            IssuingAuthorizationFleetReportedBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['service_type'] = (node) => serviceType =
        node.getEnumValue<IssuingAuthorizationFleetDataServiceType>(
            (stringValue) => IssuingAuthorizationFleetDataServiceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingAuthorizationFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer.writeEnumValue<IssuingAuthorizationFleetDataPurchaseType>(
        'purchase_type', purchaseType, (e) => e?.value);
    writer.writeObjectValue<IssuingAuthorizationFleetReportedBreakdown>(
        'reported_breakdown', reportedBreakdown);
    writer.writeEnumValue<IssuingAuthorizationFleetDataServiceType>(
        'service_type', serviceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
