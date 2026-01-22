// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The image_url property
  String? imageUrl;

  ///  The product_url property
  String? productUrl;

  ///  The reference property
  String? reference;

  ///  The subscription_reference property
  String? subscriptionReference;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['image_url'] = (node) => imageUrl = node.getStringValue();
    deserializerMap['product_url'] =
        (node) => productUrl = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['subscription_reference'] =
        (node) => subscriptionReference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('image_url', imageUrl);
    writer.writeStringValue('product_url', productUrl);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('subscription_reference', subscriptionReference);
    writer.writeAdditionalData(additionalData);
  }
}
