// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_klarna_on_demand.dart';
import './with_intent_post_request_body_payment_method_options_klarna_preferred_locale.dart';
import './with_intent_post_request_body_payment_method_options_klarna_subscriptions.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The on_demand property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaOnDemand? onDemand;

  ///  The preferred_locale property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale?
      preferredLocale;

  ///  The subscriptions property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions?
      subscriptions;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsKlarna] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        WithIntentPostRequestBodyPaymentMethodOptionsKlarnaOnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'subscriptions'] = (node) => subscriptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
