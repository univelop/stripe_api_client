// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_klarna_member1_capture_method.dart';
import './confirm_post_request_body_payment_method_options_klarna_member1_on_demand.dart';
import './confirm_post_request_body_payment_method_options_klarna_member1_preferred_locale.dart';
import './confirm_post_request_body_payment_method_options_klarna_member1_setup_future_usage.dart';
import './confirm_post_request_body_payment_method_options_klarna_member1_subscriptions.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod?
      captureMethod;

  ///  The on_demand property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand? onDemand;

  ///  The preferred_locale property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale?
      preferredLocale;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage?
      setupFutureUsage;

  ///  The subscriptions property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions?
      subscriptions;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_demand'] = (node) => onDemand = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand
            .createFromDiscriminatorValue);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'subscriptions'] = (node) => subscriptions = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1OnDemand>(
        'on_demand', onDemand);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKlarnaMember1Subscriptions>(
        'subscriptions', subscriptions);
    writer.writeAdditionalData(additionalData);
  }
}
