// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_payment_method_post_request_body_collect_config.dart';

/// auto generated
class CollectPaymentMethodPostRequestBody implements Parsable {
  ///  Configuration overrides for this collection, such as tipping, surcharging, and customer cancellation settings.
  CollectPaymentMethodPostRequestBodyCollectConfig? collectConfig;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of the PaymentIntent to collect a payment method for.
  String? paymentIntent;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectPaymentMethodPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CollectPaymentMethodPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['collect_config'] = (node) => collectConfig =
        node.getObjectValue<CollectPaymentMethodPostRequestBodyCollectConfig>(
            CollectPaymentMethodPostRequestBodyCollectConfig
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CollectPaymentMethodPostRequestBodyCollectConfig>(
        'collect_config', collectConfig);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('payment_intent', paymentIntent);
  }
}
