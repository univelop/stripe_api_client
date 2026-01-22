// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_mandate_options.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_network.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_card_member1_request_three_d_secure.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions?
      mandateOptions;

  ///  The network property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network?
      network;

  ///  The request_three_d_secure property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure?
      requestThreeDSecure;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1] and sets the default values.
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network>(
        (stringValue) =>
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'request_three_d_secure'] = (node) => requestThreeDSecure = node.getEnumValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        (stringValue) =>
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure
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
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1Network>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1RequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
