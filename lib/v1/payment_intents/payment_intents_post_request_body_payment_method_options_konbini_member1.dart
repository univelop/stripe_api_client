// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_konbini_member1_confirmation_number.dart';
import './payment_intents_post_request_body_payment_method_options_konbini_member1_expires_after_days.dart';
import './payment_intents_post_request_body_payment_method_options_konbini_member1_expires_at.dart';
import './payment_intents_post_request_body_payment_method_options_konbini_member1_product_description.dart';
import './payment_intents_post_request_body_payment_method_options_konbini_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The confirmation_number property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber?
      confirmationNumber;

  ///  The expires_after_days property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays?
      expiresAfterDays;

  ///  The expires_at property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt?
      expiresAt;

  ///  The product_description property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription?
      productDescription;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'confirmation_number'] = (node) => confirmationNumber = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber
            .createFromDiscriminatorValue);
    deserializerMap[
        'expires_after_days'] = (node) => expiresAfterDays = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays
            .createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        'confirmation_number', confirmationNumber);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        'expires_after_days', expiresAfterDays);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        'expires_at', expiresAt);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
