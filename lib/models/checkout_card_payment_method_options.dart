// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_card_installments_options.dart';
import './checkout_card_payment_method_options_capture_method.dart';
import './checkout_card_payment_method_options_request_extended_authorization.dart';
import './checkout_card_payment_method_options_request_incremental_authorization.dart';
import './checkout_card_payment_method_options_request_multicapture.dart';
import './checkout_card_payment_method_options_request_overcapture.dart';
import './checkout_card_payment_method_options_request_three_d_secure.dart';
import './checkout_card_payment_method_options_setup_future_usage.dart';
import './payment_pages_private_card_payment_method_options_resource_restrictions.dart';

/// auto generated
class CheckoutCardPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  CheckoutCardPaymentMethodOptionsCaptureMethod? captureMethod;

  ///  The installments property
  CheckoutCardInstallmentsOptions? installments;

  ///  Request ability to [capture beyond the standard authorization validity window](/payments/extended-authorization) for this CheckoutSession.
  CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  Request ability to [increment the authorization](/payments/incremental-authorization) for this CheckoutSession.
  CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  Request ability to make [multiple captures](/payments/multicapture) for this CheckoutSession.
  CheckoutCardPaymentMethodOptionsRequestMulticapture? requestMulticapture;

  ///  Request ability to [overcapture](/payments/overcapture) for this CheckoutSession.
  CheckoutCardPaymentMethodOptionsRequestOvercapture? requestOvercapture;

  ///  We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
  CheckoutCardPaymentMethodOptionsRequestThreeDSecure? requestThreeDSecure;

  ///  The restrictions property
  PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions? restrictions;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  CheckoutCardPaymentMethodOptionsSetupFutureUsage? setupFutureUsage;

  ///  Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
  String? statementDescriptorSuffixKana;

  ///  Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
  String? statementDescriptorSuffixKanji;

  /// Instantiates a new [CheckoutCardPaymentMethodOptions] and sets the default values.
  CheckoutCardPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutCardPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutCardPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<CheckoutCardPaymentMethodOptionsCaptureMethod>(
            (stringValue) => CheckoutCardPaymentMethodOptionsCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<CheckoutCardInstallmentsOptions>(
            CheckoutCardInstallmentsOptions.createFromDiscriminatorValue);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization>(
            (stringValue) =>
                CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization>(
            (stringValue) =>
                CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_multicapture'] = (node) => requestMulticapture =
        node.getEnumValue<CheckoutCardPaymentMethodOptionsRequestMulticapture>(
            (stringValue) => CheckoutCardPaymentMethodOptionsRequestMulticapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_overcapture'] = (node) => requestOvercapture =
        node.getEnumValue<CheckoutCardPaymentMethodOptionsRequestOvercapture>(
            (stringValue) => CheckoutCardPaymentMethodOptionsRequestOvercapture
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<CheckoutCardPaymentMethodOptionsRequestThreeDSecure>(
            (stringValue) => CheckoutCardPaymentMethodOptionsRequestThreeDSecure
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'restrictions'] = (node) => restrictions = node.getObjectValue<
            PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions>(
        PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions
            .createFromDiscriminatorValue);
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<CheckoutCardPaymentMethodOptionsSetupFutureUsage>(
            (stringValue) => CheckoutCardPaymentMethodOptionsSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['statement_descriptor_suffix_kana'] =
        (node) => statementDescriptorSuffixKana = node.getStringValue();
    deserializerMap['statement_descriptor_suffix_kanji'] =
        (node) => statementDescriptorSuffixKanji = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CheckoutCardPaymentMethodOptionsCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<CheckoutCardInstallmentsOptions>(
        'installments', installments);
    writer.writeEnumValue<
            CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<CheckoutCardPaymentMethodOptionsRequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<CheckoutCardPaymentMethodOptionsRequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<CheckoutCardPaymentMethodOptionsRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeObjectValue<
            PaymentPagesPrivateCardPaymentMethodOptionsResourceRestrictions>(
        'restrictions', restrictions);
    writer.writeEnumValue<CheckoutCardPaymentMethodOptionsSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeStringValue(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
