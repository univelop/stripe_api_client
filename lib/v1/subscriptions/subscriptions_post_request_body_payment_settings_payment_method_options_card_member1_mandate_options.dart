// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_card_member1_mandate_options_amount_type.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The amount_type property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptionsAmountType?
      amountType;

  ///  The description property
  String? description;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_type'] = (node) => amountType = node.getEnumValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptionsAmountType>(
        (stringValue) =>
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptionsAmountType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeEnumValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCardMember1MandateOptionsAmountType>(
        'amount_type', amountType, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeAdditionalData(additionalData);
  }
}
