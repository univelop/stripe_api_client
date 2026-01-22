// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_next_action_cashapp_handle_redirect_or_display_qr_code.dart';
import './setup_intent_next_action_redirect_to_url.dart';
import './setup_intent_next_action_use_stripe_sdk.dart';
import './setup_intent_next_action_verify_with_microdeposits.dart';

/// auto generated
class SetupIntentNextAction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cashapp_handle_redirect_or_display_qr_code property
  PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode?
      cashappHandleRedirectOrDisplayQrCode;

  ///  The redirect_to_url property
  SetupIntentNextActionRedirectToUrl? redirectToUrl;

  ///  Type of the next action to perform. Refer to the other child attributes under `next_action` for available values. Examples include: `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
  String? type_;

  ///  When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
  SetupIntentNextActionUseStripeSdk? useStripeSdk;

  ///  The verify_with_microdeposits property
  SetupIntentNextActionVerifyWithMicrodeposits? verifyWithMicrodeposits;

  /// Instantiates a new [SetupIntentNextAction] and sets the default values.
  SetupIntentNextAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentNextAction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentNextAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cashapp_handle_redirect_or_display_qr_code'] = (node) =>
        cashappHandleRedirectOrDisplayQrCode = node.getObjectValue<
                PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode>(
            PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode
                .createFromDiscriminatorValue);
    deserializerMap['redirect_to_url'] = (node) => redirectToUrl =
        node.getObjectValue<SetupIntentNextActionRedirectToUrl>(
            SetupIntentNextActionRedirectToUrl.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['use_stripe_sdk'] = (node) => useStripeSdk =
        node.getObjectValue<SetupIntentNextActionUseStripeSdk>(
            SetupIntentNextActionUseStripeSdk.createFromDiscriminatorValue);
    deserializerMap['verify_with_microdeposits'] = (node) =>
        verifyWithMicrodeposits =
            node.getObjectValue<SetupIntentNextActionVerifyWithMicrodeposits>(
                SetupIntentNextActionVerifyWithMicrodeposits
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentNextActionCashappHandleRedirectOrDisplayQrCode>(
        'cashapp_handle_redirect_or_display_qr_code',
        cashappHandleRedirectOrDisplayQrCode);
    writer.writeObjectValue<SetupIntentNextActionRedirectToUrl>(
        'redirect_to_url', redirectToUrl);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<SetupIntentNextActionUseStripeSdk>(
        'use_stripe_sdk', useStripeSdk);
    writer.writeObjectValue<SetupIntentNextActionVerifyWithMicrodeposits>(
        'verify_with_microdeposits', verifyWithMicrodeposits);
    writer.writeAdditionalData(additionalData);
  }
}
