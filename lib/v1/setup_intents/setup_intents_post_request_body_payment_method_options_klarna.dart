// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_klarna_on_demand.dart';
import './setup_intents_post_request_body_payment_method_options_klarna_preferred_locale.dart';
import './setup_intents_post_request_body_payment_method_options_klarna_subscriptions.dart';

/// auto generated
class SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The on_demand property
  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaOnDemand? onDemand;

  ///  The preferred_locale property
  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale?
      preferredLocale;

  ///  The subscriptions property
  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions?
      subscriptions;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaOnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        (stringValue) =>
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'subscriptions'] = (node) => subscriptions = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
