// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_add_invoice_items_period_end.dart';
import './subscriptions_post_request_body_add_invoice_items_period_start.dart';

/// auto generated
class SubscriptionsPostRequestBodyAddInvoiceItemsPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  SubscriptionsPostRequestBodyAddInvoiceItemsPeriodEnd? end;

  ///  The start property
  SubscriptionsPostRequestBodyAddInvoiceItemsPeriodStart? start;

  /// Instantiates a new [SubscriptionsPostRequestBodyAddInvoiceItemsPeriod] and sets the default values.
  SubscriptionsPostRequestBodyAddInvoiceItemsPeriod() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyAddInvoiceItemsPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyAddInvoiceItemsPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node
        .getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPeriodEnd>(
            SubscriptionsPostRequestBodyAddInvoiceItemsPeriodEnd
                .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node
        .getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPeriodStart>(
            SubscriptionsPostRequestBodyAddInvoiceItemsPeriodStart
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPeriodEnd>(
            'end', end);
    writer.writeObjectValue<
        SubscriptionsPostRequestBodyAddInvoiceItemsPeriodStart>('start', start);
    writer.writeAdditionalData(additionalData);
  }
}
