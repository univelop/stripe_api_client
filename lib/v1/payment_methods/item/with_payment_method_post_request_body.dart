// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_allow_redisplay.dart';
import './with_payment_method_post_request_body_billing_details.dart';
import './with_payment_method_post_request_body_card.dart';
import './with_payment_method_post_request_body_payto.dart';
import './with_payment_method_post_request_body_us_bank_account.dart';

/// auto generated
class WithPaymentMethodPostRequestBody implements Parsable {
  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
  WithPaymentMethodPostRequestBodyAllowRedisplay? allowRedisplay;

  ///  Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  WithPaymentMethodPostRequestBodyBillingDetails? billingDetails;

  ///  If this is a `card` PaymentMethod, this hash contains the user's card details.
  WithPaymentMethodPostRequestBodyCard? card;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
  WithPaymentMethodPostRequestBodyPayto? payto;

  ///  If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
  WithPaymentMethodPostRequestBodyUsBankAccount? usBankAccount;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentMethodPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<WithPaymentMethodPostRequestBodyAllowRedisplay>(
            (stringValue) => WithPaymentMethodPostRequestBodyAllowRedisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<WithPaymentMethodPostRequestBodyBillingDetails>(
            WithPaymentMethodPostRequestBodyBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<WithPaymentMethodPostRequestBodyCard>(
            WithPaymentMethodPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<WithPaymentMethodPostRequestBodyPayto>(
            WithPaymentMethodPostRequestBodyPayto.createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<WithPaymentMethodPostRequestBodyUsBankAccount>(
            WithPaymentMethodPostRequestBodyUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithPaymentMethodPostRequestBodyAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyCard>('card', card);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyPayto>(
        'payto', payto);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyUsBankAccount>(
        'us_bank_account', usBankAccount);
  }
}
