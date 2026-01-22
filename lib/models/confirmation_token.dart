// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_token_object.dart';
import './confirmation_token_setup_future_usage.dart';
import './confirmation_tokens_resource_mandate_data.dart';
import './confirmation_tokens_resource_payment_method_options.dart';
import './confirmation_tokens_resource_payment_method_preview.dart';
import './confirmation_tokens_resource_shipping.dart';

/// auto generated
/// ConfirmationTokens help transport client side data collected by Stripe JS overto your server for confirming a PaymentIntent or SetupIntent. If the confirmationis successful, values present on the ConfirmationToken are written onto the Intent.To learn more about how to use ConfirmationToken, visit the related guides:- [Finalize payments on the server](https://docs.stripe.com/payments/finalize-payments-on-the-server)- [Build two-step confirmation](https://docs.stripe.com/payments/build-a-two-step-confirmation).
class ConfirmationToken implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
  int? expiresAt;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Data used for generating a Mandate.
  ConfirmationTokensResourceMandateData? mandateData;

  ///  String representing the object's type. Objects of the same type share the same value.
  ConfirmationTokenObject? object;

  ///  ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
  String? paymentIntent;

  ///  Payment-method-specific configuration for this ConfirmationToken.
  ConfirmationTokensResourcePaymentMethodOptions? paymentMethodOptions;

  ///  Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
  ConfirmationTokensResourcePaymentMethodPreview? paymentMethodPreview;

  ///  Return URL used to confirm the Intent.
  String? returnUrl;

  ///  Indicates that you intend to make future payments with this ConfirmationToken's payment method.The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
  ConfirmationTokenSetupFutureUsage? setupFutureUsage;

  ///  ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
  String? setupIntent;

  ///  Shipping information collected on this ConfirmationToken.
  ConfirmationTokensResourceShipping? shipping;

  ///  Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
  bool? useStripeSdk;

  /// Instantiates a new [ConfirmationToken] and sets the default values.
  ConfirmationToken() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationToken createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationToken();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['mandate_data'] = (node) => mandateData =
        node.getObjectValue<ConfirmationTokensResourceMandateData>(
            ConfirmationTokensResourceMandateData.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ConfirmationTokenObject>((stringValue) =>
            ConfirmationTokenObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<ConfirmationTokensResourcePaymentMethodOptions>(
            ConfirmationTokensResourcePaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_preview'] = (node) => paymentMethodPreview =
        node.getObjectValue<ConfirmationTokensResourcePaymentMethodPreview>(
            ConfirmationTokensResourcePaymentMethodPreview
                .createFromDiscriminatorValue);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['setup_future_usage'] = (node) => setupFutureUsage =
        node.getEnumValue<ConfirmationTokenSetupFutureUsage>((stringValue) =>
            ConfirmationTokenSetupFutureUsage.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['setup_intent'] =
        (node) => setupIntent = node.getStringValue();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<ConfirmationTokensResourceShipping>(
            ConfirmationTokensResourceShipping.createFromDiscriminatorValue);
    deserializerMap['use_stripe_sdk'] =
        (node) => useStripeSdk = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<ConfirmationTokensResourceMandateData>(
        'mandate_data', mandateData);
    writer.writeEnumValue<ConfirmationTokenObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeObjectValue<ConfirmationTokensResourcePaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeObjectValue<ConfirmationTokensResourcePaymentMethodPreview>(
        'payment_method_preview', paymentMethodPreview);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeEnumValue<ConfirmationTokenSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeStringValue('setup_intent', setupIntent);
    writer.writeObjectValue<ConfirmationTokensResourceShipping>(
        'shipping', shipping);
    writer.writeBoolValue('use_stripe_sdk', value: useStripeSdk);
    writer.writeAdditionalData(additionalData);
  }
}
