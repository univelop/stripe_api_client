// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_period_end.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_period_start.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The end property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd? end;

  ///  The start property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart? start;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod] and sets the default values.
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end'] = (node) => end = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd
            .createFromDiscriminatorValue);
    deserializerMap['start'] = (node) => start = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodEnd>(
        'end', end);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriodStart>(
        'start', start);
    writer.writeAdditionalData(additionalData);
  }
}
