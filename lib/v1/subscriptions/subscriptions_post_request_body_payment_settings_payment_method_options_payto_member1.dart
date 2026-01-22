// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_payto_member1_mandate_options.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The mandate_options property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions?
      mandateOptions;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'mandate_options'] = (node) => mandateOptions = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPaytoMember1MandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeAdditionalData(additionalData);
  }
}
