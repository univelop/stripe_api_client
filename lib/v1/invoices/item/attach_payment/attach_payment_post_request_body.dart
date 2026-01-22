// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class AttachPaymentPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of the PaymentIntent to attach to the invoice.
  String? paymentIntent;

  ///  The ID of the PaymentRecord to attach to the invoice.
  String? paymentRecord;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AttachPaymentPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AttachPaymentPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payment_intent'] =
        (node) => paymentIntent = node.getStringValue();
    deserializerMap['payment_record'] =
        (node) => paymentRecord = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('payment_intent', paymentIntent);
    writer.writeStringValue('payment_record', paymentRecord);
  }
}
