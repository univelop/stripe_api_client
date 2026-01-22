// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_mandate_options.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_network.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_request_three_d_secure.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions?
      mandateOptions;

  ///  The network property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network?
      network;

  ///  The request_three_d_secure property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure
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
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
