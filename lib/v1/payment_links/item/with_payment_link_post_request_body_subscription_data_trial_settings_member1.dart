// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_subscription_data_trial_settings_member1_end_behavior.dart';

/// auto generated
class WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end_behavior property
  WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1EndBehavior?
      endBehavior;

  /// Instantiates a new [WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1] and sets the default values.
  WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'end_behavior'] = (node) => endBehavior = node.getObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1EndBehavior>(
        WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1EndBehavior
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPaymentLinkPostRequestBodySubscriptionDataTrialSettingsMember1EndBehavior>(
        'end_behavior', endBehavior);
    writer.writeAdditionalData(additionalData);
  }
}
