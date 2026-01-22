// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_card_capture_method.dart';
import './payment_intent_payment_method_options_card_network.dart';
import './payment_intent_payment_method_options_card_request_extended_authorization.dart';
import './payment_intent_payment_method_options_card_request_incremental_authorization.dart';
import './payment_intent_payment_method_options_card_request_multicapture.dart';
import './payment_intent_payment_method_options_card_request_overcapture.dart';
import './payment_intent_payment_method_options_card_request_three_d_secure.dart';
import './payment_intent_payment_method_options_card_setup_future_usage.dart';
import './payment_method_options_card_installments.dart';
import './payment_method_options_card_mandate_options.dart';

/// auto generated
class PaymentIntentPaymentMethodOptionsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentIntentPaymentMethodOptionsCardCaptureMethod? captureMethod;

  ///  Installment details for this payment.For more information, see the [installments integration guide](https://docs.stripe.com/payments/installments).
  PaymentMethodOptionsCardInstallments? installments;

  ///  Configuration options for setting up an eMandate for cards issued in India.
  PaymentMethodOptionsCardMandateOptions? mandateOptions;

  ///  Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
  PaymentIntentPaymentMethodOptionsCardNetwork? network;

  ///  Request ability to [capture beyond the standard authorization validity window](https://docs.stripe.com/payments/extended-authorization) for this PaymentIntent.
  PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization?
      requestExtendedAuthorization;

  ///  Request ability to [increment the authorization](https://docs.stripe.com/payments/incremental-authorization) for this PaymentIntent.
  PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization?
      requestIncrementalAuthorization;

  ///  Request ability to make [multiple captures](https://docs.stripe.com/payments/multicapture) for this PaymentIntent.
  PaymentIntentPaymentMethodOptionsCardRequestMulticapture? requestMulticapture;

  ///  Request ability to [overcapture](https://docs.stripe.com/payments/overcapture) for this PaymentIntent.
  PaymentIntentPaymentMethodOptionsCardRequestOvercapture? requestOvercapture;

  ///  We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
  PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure? requestThreeDSecure;

  ///  When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
  bool? requireCvcRecollection;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentIntentPaymentMethodOptionsCardSetupFutureUsage? setupFutureUsage;

  ///  Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
  String? statementDescriptorSuffixKana;

  ///  Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
  String? statementDescriptorSuffixKanji;

  /// Instantiates a new [PaymentIntentPaymentMethodOptionsCard] and sets the default values.
  PaymentIntentPaymentMethodOptionsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptionsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentPaymentMethodOptionsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<PaymentIntentPaymentMethodOptionsCardCaptureMethod>(
            (stringValue) => PaymentIntentPaymentMethodOptionsCardCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<PaymentMethodOptionsCardInstallments>(
            PaymentMethodOptionsCardInstallments.createFromDiscriminatorValue);
    deserializerMap['mandate_options'] = (node) => mandateOptions =
        node.getObjectValue<PaymentMethodOptionsCardMandateOptions>(
            PaymentMethodOptionsCardMandateOptions
                .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<PaymentIntentPaymentMethodOptionsCardNetwork>(
            (stringValue) => PaymentIntentPaymentMethodOptionsCardNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request_extended_authorization'] = (node) =>
        requestExtendedAuthorization = node.getEnumValue<
                PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_incremental_authorization'] = (node) =>
        requestIncrementalAuthorization = node.getEnumValue<
                PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_multicapture'] = (node) => requestMulticapture =
        node.getEnumValue<
                PaymentIntentPaymentMethodOptionsCardRequestMulticapture>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardRequestMulticapture.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_overcapture'] = (node) => requestOvercapture = node
        .getEnumValue<PaymentIntentPaymentMethodOptionsCardRequestOvercapture>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardRequestOvercapture.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['request_three_d_secure'] = (node) => requestThreeDSecure =
        node.getEnumValue<
                PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['require_cvc_recollection'] =
        (node) => requireCvcRecollection = node.getBoolValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage = node
        .getEnumValue<PaymentIntentPaymentMethodOptionsCardSetupFutureUsage>(
            (stringValue) =>
                PaymentIntentPaymentMethodOptionsCardSetupFutureUsage.values
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
    writer.writeEnumValue<PaymentIntentPaymentMethodOptionsCardCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodOptionsCardInstallments>(
        'installments', installments);
    writer.writeObjectValue<PaymentMethodOptionsCardMandateOptions>(
        'mandate_options', mandateOptions);
    writer.writeEnumValue<PaymentIntentPaymentMethodOptionsCardNetwork>(
        'network', network, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization>(
        'request_extended_authorization',
        requestExtendedAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization>(
        'request_incremental_authorization',
        requestIncrementalAuthorization,
        (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsCardRequestMulticapture>(
        'request_multicapture', requestMulticapture, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsCardRequestOvercapture>(
        'request_overcapture', requestOvercapture, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure>(
        'request_three_d_secure', requestThreeDSecure, (e) => e?.value);
    writer.writeBoolValue('require_cvc_recollection',
        value: requireCvcRecollection);
    writer
        .writeEnumValue<PaymentIntentPaymentMethodOptionsCardSetupFutureUsage>(
            'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue(
        'statement_descriptor_suffix_kana', statementDescriptorSuffixKana);
    writer.writeStringValue(
        'statement_descriptor_suffix_kanji', statementDescriptorSuffixKanji);
    writer.writeAdditionalData(additionalData);
  }
}
