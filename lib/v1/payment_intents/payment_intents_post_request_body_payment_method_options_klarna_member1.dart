// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_on_demand.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_preferred_locale.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_setup_future_usage.dart';
import './payment_intents_post_request_body_payment_method_options_klarna_member1_subscriptions.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod?
      captureMethod;

  ///  The on_demand property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand?
      onDemand;

  ///  The preferred_locale property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale?
      preferredLocale;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The subscriptions property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions?
      subscriptions;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'subscriptions'] = (node) => subscriptions = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
