// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsFinancialAccountTransactionsFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_spend_dispute_management property
  bool? cardSpendDisputeManagement;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsFinancialAccountTransactionsFeatures] and sets the default values.
  AccountSessionsPostRequestBodyComponentsFinancialAccountTransactionsFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsFinancialAccountTransactionsFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsFinancialAccountTransactionsFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_spend_dispute_management'] =
        (node) => cardSpendDisputeManagement = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('card_spend_dispute_management',
        value: cardSpendDisputeManagement);
    writer.writeAdditionalData(additionalData);
  }
}
