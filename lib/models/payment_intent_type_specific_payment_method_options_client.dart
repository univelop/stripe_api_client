// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_installment_options.dart';
import './payment_intent_payment_method_options_mandate_options_payto.dart';
import './payment_intent_type_specific_payment_method_options_client_capture_method.dart';
import './payment_intent_type_specific_payment_method_options_client_setup_future_usage.dart';
import './payment_intent_type_specific_payment_method_options_client_verification_method.dart';
import './payment_method_options_card_present_routing.dart';

/// auto generated
class PaymentIntentTypeSpecificPaymentMethodOptionsClient
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentIntentTypeSpecificPaymentMethodOptionsClientCaptureMethod?
      captureMethod;

  ///  The installments property
  PaymentFlowsInstallmentOptions? installments;

  ///  The mandate_options property
  PaymentIntentPaymentMethodOptionsMandateOptionsPayto? mandateOptions;

  ///  Request ability to [increment](https://docs.stripe.com/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://docs.stripe.com/api/payment_intents/confirm) response to verify support.
  bool? requestIncrementalAuthorizationSupport;

  ///  When enabled, using a card that is attached to a customer will require the CVC to be provided again (i.e. using the cvc_token parameter).
  bool? requireCvcRecollection;

  ///  The routing property
  PaymentMethodOptionsCardPresentRouting? routing;

  ///  Indicates that you intend to make future payments with this PaymentIntent's payment method.If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
  PaymentIntentTypeSpecificPaymentMethodOptionsClientSetupFutureUsage?
      setupFutureUsage;

  ///  Bank account verification method.
  PaymentIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod?
      verificationMethod;

  /// Instantiates a new [PaymentIntentTypeSpecificPaymentMethodOptionsClient] and sets the default values.
  PaymentIntentTypeSpecificPaymentMethodOptionsClient() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentTypeSpecificPaymentMethodOptionsClient
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentTypeSpecificPaymentMethodOptionsClient();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientCaptureMethod>(
        (stringValue) =>
            PaymentIntentTypeSpecificPaymentMethodOptionsClientCaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<PaymentFlowsInstallmentOptions>(
            PaymentFlowsInstallmentOptions.createFromDiscriminatorValue);
    deserializerMap['mandate_options'] = (node) => mandateOptions = node
        .getObjectValue<PaymentIntentPaymentMethodOptionsMandateOptionsPayto>(
            PaymentIntentPaymentMethodOptionsMandateOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['request_incremental_authorization_support'] =
        (node) => requestIncrementalAuthorizationSupport = node.getBoolValue();
    deserializerMap['require_cvc_recollection'] =
        (node) => requireCvcRecollection = node.getBoolValue();
    deserializerMap['routing'] = (node) => routing = node.getObjectValue<
            PaymentMethodOptionsCardPresentRouting>(
        PaymentMethodOptionsCardPresentRouting.createFromDiscriminatorValue);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientSetupFutureUsage>(
        (stringValue) =>
            PaymentIntentTypeSpecificPaymentMethodOptionsClientSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'verification_method'] = (node) => verificationMethod = node.getEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod>(
        (stringValue) =>
            PaymentIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeObjectValue<PaymentFlowsInstallmentOptions>(
        'installments', installments);
    writer
        .writeObjectValue<PaymentIntentPaymentMethodOptionsMandateOptionsPayto>(
            'mandate_options', mandateOptions);
    writer.writeBoolValue('request_incremental_authorization_support',
        value: requestIncrementalAuthorizationSupport);
    writer.writeBoolValue('require_cvc_recollection',
        value: requireCvcRecollection);
    writer.writeObjectValue<PaymentMethodOptionsCardPresentRouting>(
        'routing', routing);
    writer.writeEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentTypeSpecificPaymentMethodOptionsClientVerificationMethod>(
        'verification_method', verificationMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
