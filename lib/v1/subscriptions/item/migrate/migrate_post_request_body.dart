// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './migrate_post_request_body_billing_mode.dart';

/// auto generated
class MigratePostRequestBody implements Parsable {
  ///  Controls how prorations and invoices for subscriptions are calculated and orchestrated.
  MigratePostRequestBodyBillingMode? billingMode;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MigratePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MigratePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<MigratePostRequestBodyBillingMode>(
            MigratePostRequestBodyBillingMode.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<MigratePostRequestBodyBillingMode>(
        'billing_mode', billingMode);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
