// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_klarna_on_demand.dart';
import './confirm_post_request_body_payment_method_options_klarna_preferred_locale.dart';
import './confirm_post_request_body_payment_method_options_klarna_subscriptions.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsKlarna
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The currency property
  String? currency;

  ///  The on_demand property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaOnDemand? onDemand;

  ///  The preferred_locale property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale?
      preferredLocale;

  ///  The subscriptions property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions? subscriptions;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsKlarna] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsKlarna() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsKlarna
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsKlarna();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        ConfirmPostRequestBodyPaymentMethodOptionsKlarnaOnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['subscriptions'] = (node) => subscriptions =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaOnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaPreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaSubscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
