// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_delete_request_body_cancellation_details.dart';

/// auto generated
class SubscriptionExposedDeleteRequestBody implements Parsable {
  ///  Details about why this subscription was cancelled
  SubscriptionExposedDeleteRequestBodyCancellationDetails? cancellationDetails;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. Defaults to `false`.
  bool? invoiceNow;

  ///  Will generate a proration invoice item that credits remaining unused time until the subscription period end. Defaults to `false`.
  bool? prorate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedDeleteRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionExposedDeleteRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancellation_details'] = (node) => cancellationDetails =
        node.getObjectValue<
                SubscriptionExposedDeleteRequestBodyCancellationDetails>(
            SubscriptionExposedDeleteRequestBodyCancellationDetails
                .createFromDiscriminatorValue);
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
    writer.writeObjectValue<
            SubscriptionExposedDeleteRequestBodyCancellationDetails>(
        'cancellation_details', cancellationDetails);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeBoolValue('invoice_now', value: invoiceNow);
    writer.writeBoolValue('prorate', value: prorate);
  }
}
