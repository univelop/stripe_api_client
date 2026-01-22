// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentMethodDomainsPostRequestBody implements Parsable {
  ///  The domain name that this payment method domain object represents.
  String? domainName;

  ///  Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
  bool? enabled;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDomainsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDomainsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['domain_name'] =
        (node) => domainName = node.getStringValue();
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('domain_name', domainName);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
