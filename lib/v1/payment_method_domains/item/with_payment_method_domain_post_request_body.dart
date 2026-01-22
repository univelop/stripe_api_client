// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithPaymentMethodDomainPostRequestBody implements Parsable {
  ///  Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
  bool? enabled;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodDomainPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentMethodDomainPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
