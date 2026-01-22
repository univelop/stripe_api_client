// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_recurring.dart';
import './quotes_resource_upfront.dart';

/// auto generated
class QuotesResourceComputed implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
  QuotesResourceRecurring? recurring;

  ///  The upfront property
  QuotesResourceUpfront? upfront;

  /// Instantiates a new [QuotesResourceComputed] and sets the default values.
  QuotesResourceComputed() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceComputed createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceComputed();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['recurring'] = (node) => recurring =
        node.getObjectValue<QuotesResourceRecurring>(
            QuotesResourceRecurring.createFromDiscriminatorValue);
    deserializerMap['upfront'] = (node) => upfront =
        node.getObjectValue<QuotesResourceUpfront>(
            QuotesResourceUpfront.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<QuotesResourceRecurring>('recurring', recurring);
    writer.writeObjectValue<QuotesResourceUpfront>('upfront', upfront);
    writer.writeAdditionalData(additionalData);
  }
}
