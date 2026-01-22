// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_payment_intent_post_request_body_confirm_config.dart';

/// auto generated
class ConfirmPaymentIntentPostRequestBody implements Parsable {
  ///  Configuration overrides for this confirmation, such as surcharge settings and return URL.
  ConfirmPaymentIntentPostRequestBodyConfirmConfig? confirmConfig;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of the PaymentIntent to confirm.
  String? paymentIntent;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPaymentIntentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPaymentIntentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['confirm_config'] = (node) => confirmConfig =
        node.getObjectValue<ConfirmPaymentIntentPostRequestBodyConfirmConfig>(
            ConfirmPaymentIntentPostRequestBodyConfirmConfig
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
    writer.writeObjectValue<ConfirmPaymentIntentPostRequestBodyConfirmConfig>(
        'confirm_config', confirmConfig);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('payment_intent', paymentIntent);
  }
}
