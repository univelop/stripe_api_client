// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_capture_method.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_on_demand.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_preferred_locale.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_setup_future_usage.dart';
import './with_intent_post_request_body_payment_method_options_klarna_member1_subscriptions.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod?
      captureMethod;

  ///  The on_demand property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand? onDemand;

  ///  The preferred_locale property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale?
      preferredLocale;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The subscriptions property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions?
      subscriptions;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'subscriptions'] = (node) => subscriptions = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
