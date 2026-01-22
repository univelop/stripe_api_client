// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_alipay_handle_redirect.dart';
import './payment_intent_next_action_boleto.dart';
import './payment_intent_next_action_card_await_notification.dart';
import './payment_intent_next_action_cashapp_handle_redirect_or_display_qr_code.dart';
import './payment_intent_next_action_display_bank_transfer_instructions.dart';
import './payment_intent_next_action_display_multibanco_details.dart';
import './payment_intent_next_action_display_oxxo_details.dart';
import './payment_intent_next_action_konbini.dart';
import './payment_intent_next_action_paynow_display_qr_code.dart';
import './payment_intent_next_action_pix_display_qr_code.dart';
import './payment_intent_next_action_promptpay_display_qr_code.dart';
import './payment_intent_next_action_redirect_to_url.dart';
import './payment_intent_next_action_swish_handle_redirect_or_display_qr_code.dart';
import './payment_intent_next_action_use_stripe_sdk.dart';
import './payment_intent_next_action_verify_with_microdeposits.dart';
import './payment_intent_next_action_wechat_pay_display_qr_code.dart';
import './payment_intent_next_action_wechat_pay_redirect_to_android_app.dart';
import './payment_intent_next_action_wechat_pay_redirect_to_ios_app.dart';

/// auto generated
class PaymentIntentNextAction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The alipay_handle_redirect property
  PaymentIntentNextActionAlipayHandleRedirect? alipayHandleRedirect;

  ///  The boleto_display_details property
  PaymentIntentNextActionBoleto? boletoDisplayDetails;

  ///  The card_await_notification property
  PaymentIntentNextActionCardAwaitNotification? cardAwaitNotification;

  ///  The cashapp_handle_redirect_or_display_qr_code property
  PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode?
      cashappHandleRedirectOrDisplayQrCode;

  ///  The display_bank_transfer_instructions property
  PaymentIntentNextActionDisplayBankTransferInstructions?
      displayBankTransferInstructions;

  ///  The konbini_display_details property
  PaymentIntentNextActionKonbini? konbiniDisplayDetails;

  ///  The multibanco_display_details property
  PaymentIntentNextActionDisplayMultibancoDetails? multibancoDisplayDetails;

  ///  The oxxo_display_details property
  PaymentIntentNextActionDisplayOxxoDetails? oxxoDisplayDetails;

  ///  The paynow_display_qr_code property
  PaymentIntentNextActionPaynowDisplayQrCode? paynowDisplayQrCode;

  ///  The pix_display_qr_code property
  PaymentIntentNextActionPixDisplayQrCode? pixDisplayQrCode;

  ///  The promptpay_display_qr_code property
  PaymentIntentNextActionPromptpayDisplayQrCode? promptpayDisplayQrCode;

  ///  The redirect_to_url property
  PaymentIntentNextActionRedirectToUrl? redirectToUrl;

  ///  The swish_handle_redirect_or_display_qr_code property
  PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode?
      swishHandleRedirectOrDisplayQrCode;

  ///  Type of the next action to perform. Refer to the other child attributes under `next_action` for available values. Examples include: `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
  String? type_;

  ///  When confirming a PaymentIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
  PaymentIntentNextActionUseStripeSdk? useStripeSdk;

  ///  The verify_with_microdeposits property
  PaymentIntentNextActionVerifyWithMicrodeposits? verifyWithMicrodeposits;

  ///  The wechat_pay_display_qr_code property
  PaymentIntentNextActionWechatPayDisplayQrCode? wechatPayDisplayQrCode;

  ///  The wechat_pay_redirect_to_android_app property
  PaymentIntentNextActionWechatPayRedirectToAndroidApp?
      wechatPayRedirectToAndroidApp;

  ///  The wechat_pay_redirect_to_ios_app property
  PaymentIntentNextActionWechatPayRedirectToIosApp? wechatPayRedirectToIosApp;

  /// Instantiates a new [PaymentIntentNextAction] and sets the default values.
  PaymentIntentNextAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentNextAction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentNextAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alipay_handle_redirect'] = (node) => alipayHandleRedirect =
        node.getObjectValue<PaymentIntentNextActionAlipayHandleRedirect>(
            PaymentIntentNextActionAlipayHandleRedirect
                .createFromDiscriminatorValue);
    deserializerMap['boleto_display_details'] = (node) => boletoDisplayDetails =
        node.getObjectValue<PaymentIntentNextActionBoleto>(
            PaymentIntentNextActionBoleto.createFromDiscriminatorValue);
    deserializerMap['card_await_notification'] = (node) =>
        cardAwaitNotification =
            node.getObjectValue<PaymentIntentNextActionCardAwaitNotification>(
                PaymentIntentNextActionCardAwaitNotification
                    .createFromDiscriminatorValue);
    deserializerMap['cashapp_handle_redirect_or_display_qr_code'] = (node) =>
        cashappHandleRedirectOrDisplayQrCode = node.getObjectValue<
                PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode>(
            PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode
                .createFromDiscriminatorValue);
    deserializerMap['display_bank_transfer_instructions'] = (node) =>
        displayBankTransferInstructions = node.getObjectValue<
                PaymentIntentNextActionDisplayBankTransferInstructions>(
            PaymentIntentNextActionDisplayBankTransferInstructions
                .createFromDiscriminatorValue);
    deserializerMap['konbini_display_details'] = (node) =>
        konbiniDisplayDetails =
            node.getObjectValue<PaymentIntentNextActionKonbini>(
                PaymentIntentNextActionKonbini.createFromDiscriminatorValue);
    deserializerMap['multibanco_display_details'] = (node) =>
        multibancoDisplayDetails = node
            .getObjectValue<PaymentIntentNextActionDisplayMultibancoDetails>(
                PaymentIntentNextActionDisplayMultibancoDetails
                    .createFromDiscriminatorValue);
    deserializerMap['oxxo_display_details'] = (node) => oxxoDisplayDetails =
        node.getObjectValue<PaymentIntentNextActionDisplayOxxoDetails>(
            PaymentIntentNextActionDisplayOxxoDetails
                .createFromDiscriminatorValue);
    deserializerMap['paynow_display_qr_code'] = (node) => paynowDisplayQrCode =
        node.getObjectValue<PaymentIntentNextActionPaynowDisplayQrCode>(
            PaymentIntentNextActionPaynowDisplayQrCode
                .createFromDiscriminatorValue);
    deserializerMap['pix_display_qr_code'] = (node) => pixDisplayQrCode =
        node.getObjectValue<PaymentIntentNextActionPixDisplayQrCode>(
            PaymentIntentNextActionPixDisplayQrCode
                .createFromDiscriminatorValue);
    deserializerMap['promptpay_display_qr_code'] = (node) =>
        promptpayDisplayQrCode =
            node.getObjectValue<PaymentIntentNextActionPromptpayDisplayQrCode>(
                PaymentIntentNextActionPromptpayDisplayQrCode
                    .createFromDiscriminatorValue);
    deserializerMap['redirect_to_url'] = (node) => redirectToUrl =
        node.getObjectValue<PaymentIntentNextActionRedirectToUrl>(
            PaymentIntentNextActionRedirectToUrl.createFromDiscriminatorValue);
    deserializerMap['swish_handle_redirect_or_display_qr_code'] = (node) =>
        swishHandleRedirectOrDisplayQrCode = node.getObjectValue<
                PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode>(
            PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['use_stripe_sdk'] = (node) => useStripeSdk =
        node.getObjectValue<PaymentIntentNextActionUseStripeSdk>(
            PaymentIntentNextActionUseStripeSdk.createFromDiscriminatorValue);
    deserializerMap['verify_with_microdeposits'] = (node) =>
        verifyWithMicrodeposits =
            node.getObjectValue<PaymentIntentNextActionVerifyWithMicrodeposits>(
                PaymentIntentNextActionVerifyWithMicrodeposits
                    .createFromDiscriminatorValue);
    deserializerMap['wechat_pay_display_qr_code'] = (node) =>
        wechatPayDisplayQrCode =
            node.getObjectValue<PaymentIntentNextActionWechatPayDisplayQrCode>(
                PaymentIntentNextActionWechatPayDisplayQrCode
                    .createFromDiscriminatorValue);
    deserializerMap['wechat_pay_redirect_to_android_app'] = (node) =>
        wechatPayRedirectToAndroidApp = node.getObjectValue<
                PaymentIntentNextActionWechatPayRedirectToAndroidApp>(
            PaymentIntentNextActionWechatPayRedirectToAndroidApp
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay_redirect_to_ios_app'] = (node) =>
        wechatPayRedirectToIosApp = node
            .getObjectValue<PaymentIntentNextActionWechatPayRedirectToIosApp>(
                PaymentIntentNextActionWechatPayRedirectToIosApp
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentIntentNextActionAlipayHandleRedirect>(
        'alipay_handle_redirect', alipayHandleRedirect);
    writer.writeObjectValue<PaymentIntentNextActionBoleto>(
        'boleto_display_details', boletoDisplayDetails);
    writer.writeObjectValue<PaymentIntentNextActionCardAwaitNotification>(
        'card_await_notification', cardAwaitNotification);
    writer.writeObjectValue<
            PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode>(
        'cashapp_handle_redirect_or_display_qr_code',
        cashappHandleRedirectOrDisplayQrCode);
    writer.writeObjectValue<
            PaymentIntentNextActionDisplayBankTransferInstructions>(
        'display_bank_transfer_instructions', displayBankTransferInstructions);
    writer.writeObjectValue<PaymentIntentNextActionKonbini>(
        'konbini_display_details', konbiniDisplayDetails);
    writer.writeObjectValue<PaymentIntentNextActionDisplayMultibancoDetails>(
        'multibanco_display_details', multibancoDisplayDetails);
    writer.writeObjectValue<PaymentIntentNextActionDisplayOxxoDetails>(
        'oxxo_display_details', oxxoDisplayDetails);
    writer.writeObjectValue<PaymentIntentNextActionPaynowDisplayQrCode>(
        'paynow_display_qr_code', paynowDisplayQrCode);
    writer.writeObjectValue<PaymentIntentNextActionPixDisplayQrCode>(
        'pix_display_qr_code', pixDisplayQrCode);
    writer.writeObjectValue<PaymentIntentNextActionPromptpayDisplayQrCode>(
        'promptpay_display_qr_code', promptpayDisplayQrCode);
    writer.writeObjectValue<PaymentIntentNextActionRedirectToUrl>(
        'redirect_to_url', redirectToUrl);
    writer.writeObjectValue<
            PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode>(
        'swish_handle_redirect_or_display_qr_code',
        swishHandleRedirectOrDisplayQrCode);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<PaymentIntentNextActionUseStripeSdk>(
        'use_stripe_sdk', useStripeSdk);
    writer.writeObjectValue<PaymentIntentNextActionVerifyWithMicrodeposits>(
        'verify_with_microdeposits', verifyWithMicrodeposits);
    writer.writeObjectValue<PaymentIntentNextActionWechatPayDisplayQrCode>(
        'wechat_pay_display_qr_code', wechatPayDisplayQrCode);
    writer
        .writeObjectValue<PaymentIntentNextActionWechatPayRedirectToAndroidApp>(
            'wechat_pay_redirect_to_android_app',
            wechatPayRedirectToAndroidApp);
    writer.writeObjectValue<PaymentIntentNextActionWechatPayRedirectToIosApp>(
        'wechat_pay_redirect_to_ios_app', wechatPayRedirectToIosApp);
    writer.writeAdditionalData(additionalData);
  }
}
