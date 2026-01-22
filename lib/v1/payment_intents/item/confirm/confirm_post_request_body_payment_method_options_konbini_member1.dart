// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_konbini_member1_confirmation_number.dart';
import './confirm_post_request_body_payment_method_options_konbini_member1_expires_after_days.dart';
import './confirm_post_request_body_payment_method_options_konbini_member1_expires_at.dart';
import './confirm_post_request_body_payment_method_options_konbini_member1_product_description.dart';
import './confirm_post_request_body_payment_method_options_konbini_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The confirmation_number property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber?
      confirmationNumber;

  ///  The expires_after_days property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays?
      expiresAfterDays;

  ///  The expires_at property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt? expiresAt;

  ///  The product_description property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription?
      productDescription;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'confirmation_number'] = (node) => confirmationNumber = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber
            .createFromDiscriminatorValue);
    deserializerMap[
        'expires_after_days'] = (node) => expiresAfterDays = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays
            .createFromDiscriminatorValue);
    deserializerMap['expires_at'] = (node) => expiresAt = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'product_description'] = (node) => productDescription = node.getObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription
            .createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ConfirmationNumber>(
        'confirmation_number', confirmationNumber);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAfterDays>(
        'expires_after_days', expiresAfterDays);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ExpiresAt>(
        'expires_at', expiresAt);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1ProductDescription>(
        'product_description', productDescription);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsKonbiniMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
