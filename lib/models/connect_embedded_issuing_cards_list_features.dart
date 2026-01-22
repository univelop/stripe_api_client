// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ConnectEmbeddedIssuingCardsListFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether to allow cardholder management features.
  bool? cardholderManagement;

  ///  Whether to allow card management features.
  bool? cardManagement;

  ///  Whether to allow card spend dispute management features.
  bool? cardSpendDisputeManagement;

  ///  Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
  bool? disableStripeUserAuthentication;

  ///  Whether to allow spend control management features.
  bool? spendControlManagement;

  /// Instantiates a new [ConnectEmbeddedIssuingCardsListFeatures] and sets the default values.
  ConnectEmbeddedIssuingCardsListFeatures() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectEmbeddedIssuingCardsListFeatures createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConnectEmbeddedIssuingCardsListFeatures();
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
    deserializerMap['disable_stripe_user_authentication'] =
        (node) => disableStripeUserAuthentication = node.getBoolValue();
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
    writer.writeBoolValue('disable_stripe_user_authentication',
        value: disableStripeUserAuthentication);
    writer.writeBoolValue('spend_control_management',
        value: spendControlManagement);
    writer.writeAdditionalData(additionalData);
  }
}
