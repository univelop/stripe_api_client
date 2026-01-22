// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_add_invoice_items_period_end.dart';
import './subscription_exposed_post_request_body_add_invoice_items_period_start.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd? end;

  ///  The start property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart? start;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod] and sets the default values.
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd
            .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd>('end', end);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart>(
        'start', start);
    writer.writeAdditionalData(additionalData);
  }
}
