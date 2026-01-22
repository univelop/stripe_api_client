// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsIssuingCardFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_management property
  bool? cardholderManagement;

  ///  The card_management property
  bool? cardManagement;

  ///  The card_spend_dispute_management property
  bool? cardSpendDisputeManagement;

  ///  The spend_control_management property
  bool? spendControlManagement;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsIssuingCardFeatures] and sets the default values.
  AccountSessionsPostRequestBodyComponentsIssuingCardFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsIssuingCardFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsIssuingCardFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cardholder_management'] =
        (node) => cardholderManagement = node.getBoolValue();
    deserializerMap['card_management'] =
        (node) => cardManagement = node.getBoolValue();
    deserializerMap['card_spend_dispute_management'] =
        (node) => cardSpendDisputeManagement = node.getBoolValue();
    deserializerMap['spend_control_management'] =
        (node) => spendControlManagement = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('cardholder_management', value: cardholderManagement);
    writer.writeBoolValue('card_management', value: cardManagement);
    writer.writeBoolValue('card_spend_dispute_management',
        value: cardSpendDisputeManagement);
    writer.writeBoolValue('spend_control_management',
        value: spendControlManagement);
    writer.writeAdditionalData(additionalData);
  }
}
