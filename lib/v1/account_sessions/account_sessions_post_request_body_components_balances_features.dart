// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AccountSessionsPostRequestBodyComponentsBalancesFeatures
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The disable_stripe_user_authentication property
  bool? disableStripeUserAuthentication;

  ///  The edit_payout_schedule property
  bool? editPayoutSchedule;

  ///  The external_account_collection property
  bool? externalAccountCollection;

  ///  The instant_payouts property
  bool? instantPayouts;

  ///  The standard_payouts property
  bool? standardPayouts;

  /// Instantiates a new [AccountSessionsPostRequestBodyComponentsBalancesFeatures] and sets the default values.
  AccountSessionsPostRequestBodyComponentsBalancesFeatures()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBodyComponentsBalancesFeatures
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSessionsPostRequestBodyComponentsBalancesFeatures();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['disable_stripe_user_authentication'] =
        (node) => disableStripeUserAuthentication = node.getBoolValue();
    deserializerMap['edit_payout_schedule'] =
        (node) => editPayoutSchedule = node.getBoolValue();
    deserializerMap['external_account_collection'] =
        (node) => externalAccountCollection = node.getBoolValue();
    deserializerMap['instant_payouts'] =
        (node) => instantPayouts = node.getBoolValue();
    deserializerMap['standard_payouts'] =
        (node) => standardPayouts = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('disable_stripe_user_authentication',
        value: disableStripeUserAuthentication);
    writer.writeBoolValue('edit_payout_schedule', value: editPayoutSchedule);
    writer.writeBoolValue('external_account_collection',
        value: externalAccountCollection);
    writer.writeBoolValue('instant_payouts', value: instantPayouts);
    writer.writeBoolValue('standard_payouts', value: standardPayouts);
    writer.writeAdditionalData(additionalData);
  }
}
