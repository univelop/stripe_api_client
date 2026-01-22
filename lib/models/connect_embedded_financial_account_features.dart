// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ConnectEmbeddedFinancialAccountFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
  bool? disableStripeUserAuthentication;

  ///  Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
  bool? externalAccountCollection;

  ///  Whether to allow sending money.
  bool? sendMoney;

  ///  Whether to allow transferring balance.
  bool? transferBalance;

  /// Instantiates a new [ConnectEmbeddedFinancialAccountFeatures] and sets the default values.
  ConnectEmbeddedFinancialAccountFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedFinancialAccountFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConnectEmbeddedFinancialAccountFeatures();
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
