// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsFinancialAccountFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The disable_stripe_user_authentication property
  bool? disableStripeUserAuthentication;

  ///  The external_account_collection property
  bool? externalAccountCollection;

  ///  The send_money property
  bool? sendMoney;

  ///  The transfer_balance property
  bool? transferBalance;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsFinancialAccountFeatures] and sets the default values.
  AccountSessionsPostRequestBodyComponentsFinancialAccountFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsFinancialAccountFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsFinancialAccountFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['disable_stripe_user_authentication'] =
        (node) => disableStripeUserAuthentication = node.getBoolValue();
    deserializerMap['external_account_collection'] =
        (node) => externalAccountCollection = node.getBoolValue();
    deserializerMap['send_money'] = (node) => sendMoney = node.getBoolValue();
    deserializerMap['transfer_balance'] =
        (node) => transferBalance = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('disable_stripe_user_authentication',
        value: disableStripeUserAuthentication);
    writer.writeBoolValue('external_account_collection',
        value: externalAccountCollection);
    writer.writeBoolValue('send_money', value: sendMoney);
    writer.writeBoolValue('transfer_balance', value: transferBalance);
    writer.writeAdditionalData(additionalData);
  }
}
