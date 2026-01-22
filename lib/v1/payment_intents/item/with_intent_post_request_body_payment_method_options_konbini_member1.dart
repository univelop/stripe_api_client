// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_konbini_member1_confirmation_number.dart';
import './with_intent_post_request_body_payment_method_options_konbini_member1_expires_after_days.dart';
import './with_intent_post_request_body_payment_method_options_konbini_member1_expires_at.dart';
import './with_intent_post_request_body_payment_method_options_konbini_member1_product_description.dart';
import './with_intent_post_request_body_payment_method_options_konbini_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The confirmation_number property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber?
      confirmationNumber;

  ///  The expires_after_days property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays?
      expiresAfterDays;

  ///  The expires_at property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt?
      expiresAt;

  ///  The product_description property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription?
      productDescription;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'confirmation_number'] = (node) => confirmationNumber = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber
            .createFromDiscriminatorValue);
    deserializerMap[
        'expires_after_days'] = (node) => expiresAfterDays = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays
            .createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage
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
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        'confirmation_number', confirmationNumber);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        'expires_after_days', expiresAfterDays);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        'expires_at', expiresAt);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
