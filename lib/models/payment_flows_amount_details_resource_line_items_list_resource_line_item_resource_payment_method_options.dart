// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_card_payment_intent_amount_details_line_item_payment_method_options.dart';
import './payment_flows_private_payment_methods_card_present_amount_details_line_item_payment_method_options.dart';
import './payment_flows_private_payment_methods_klarna_payment_intent_amount_details_line_item_payment_method_options.dart';
import './payment_flows_private_payment_methods_paypal_amount_details_line_item_payment_method_options.dart';

/// auto generated
class PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card property
  PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions?
      card;

  ///  The card_present property
  PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions?
      cardPresent;

  ///  The klarna property
  PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions?
      klarna;

  ///  The paypal property
  PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions?
      paypal;

  /// Instantiates a new [PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions] and sets the default values.
  PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions>(
        PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions
            .createFromDiscriminatorValue);
    deserializerMap[
        'card_present'] = (node) => cardPresent = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions>(
        PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions
            .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions>(
        PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions
            .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions>(
        PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPaymentIntentAmountDetailsLineItemPaymentMethodOptions>(
        'card', card);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentAmountDetailsLineItemPaymentMethodOptions>(
        'card_present', cardPresent);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions>(
        'klarna', klarna);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsPaypalAmountDetailsLineItemPaymentMethodOptions>(
        'paypal', paypal);
    writer.writeAdditionalData(additionalData);
  }
}
