// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_fleet_cardholder_prompt_data.dart';
import './authorizations_post_request_body_fleet_purchase_type.dart';
import './authorizations_post_request_body_fleet_reported_breakdown.dart';
import './authorizations_post_request_body_fleet_service_type.dart';

/// auto generated
/// Fleet-specific information for authorizations using Fleet cards.
class AuthorizationsPostRequestBodyFleet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_prompt_data property
  AuthorizationsPostRequestBodyFleetCardholderPromptData? cardholderPromptData;

  ///  The purchase_type property
  AuthorizationsPostRequestBodyFleetPurchaseType? purchaseType;

  ///  The reported_breakdown property
  AuthorizationsPostRequestBodyFleetReportedBreakdown? reportedBreakdown;

  ///  The service_type property
  AuthorizationsPostRequestBodyFleetServiceType? serviceType;

  /// Instantiates a new [AuthorizationsPostRequestBodyFleet] and sets the default values.
  AuthorizationsPostRequestBodyFleet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyFleet createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AuthorizationsPostRequestBodyFleet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_prompt_data'] = (node) => cardholderPromptData =
        node.getObjectValue<
                AuthorizationsPostRequestBodyFleetCardholderPromptData>(
            AuthorizationsPostRequestBodyFleetCardholderPromptData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_type'] = (node) => purchaseType =
        node.getEnumValue<AuthorizationsPostRequestBodyFleetPurchaseType>(
            (stringValue) => AuthorizationsPostRequestBodyFleetPurchaseType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reported_breakdown'] = (node) => reportedBreakdown = node
        .getObjectValue<AuthorizationsPostRequestBodyFleetReportedBreakdown>(
            AuthorizationsPostRequestBodyFleetReportedBreakdown
                .createFromDiscriminatorValue);
    deserializerMap['service_type'] = (node) => serviceType =
        node.getEnumValue<AuthorizationsPostRequestBodyFleetServiceType>(
            (stringValue) => AuthorizationsPostRequestBodyFleetServiceType
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
            AuthorizationsPostRequestBodyFleetCardholderPromptData>(
        'cardholder_prompt_data', cardholderPromptData);
    writer.writeEnumValue<AuthorizationsPostRequestBodyFleetPurchaseType>(
        'purchase_type', purchaseType, (e) => e?.value);
    writer
        .writeObjectValue<AuthorizationsPostRequestBodyFleetReportedBreakdown>(
            'reported_breakdown', reportedBreakdown);
    writer.writeEnumValue<AuthorizationsPostRequestBodyFleetServiceType>(
        'service_type', serviceType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
