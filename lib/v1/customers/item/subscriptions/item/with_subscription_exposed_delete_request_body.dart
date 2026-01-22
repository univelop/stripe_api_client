// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithSubscriptionExposedDeleteRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Can be set to `true` if `at_period_end` is not set to `true`. Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items.
  bool? invoiceNow;

  ///  Can be set to `true` if `at_period_end` is not set to `true`. Will generate a proration invoice item that credits remaining unused time until the subscription period end.
  bool? prorate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedDeleteRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSubscriptionExposedDeleteRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['invoice_now'] = (node) => invoiceNow = node.getBoolValue();
    deserializerMap['prorate'] = (node) => prorate = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeBoolValue('invoice_now', value: invoiceNow);
    writer.writeBoolValue('prorate', value: prorate);
  }
}
