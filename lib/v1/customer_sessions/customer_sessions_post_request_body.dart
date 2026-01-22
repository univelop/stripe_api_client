// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_sessions_post_request_body_components.dart';

/// auto generated
class CustomerSessionsPostRequestBody implements Parsable {
  ///  Configuration for each component. At least 1 component must be enabled.
  CustomerSessionsPostRequestBodyComponents? components;

  ///  The ID of an existing customer for which to create the Customer Session.
  String? customer;

  ///  The ID of an existing Account for which to create the Customer Session.
  String? customerAccount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerSessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerSessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['components'] = (node) => components = node.getObjectValue<
            CustomerSessionsPostRequestBodyComponents>(
        CustomerSessionsPostRequestBodyComponents.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomerSessionsPostRequestBodyComponents>(
        'components', components);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
