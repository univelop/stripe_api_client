// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/payment_intent_amount_details_line_item.dart';
import './amount_details_line_items_get_response_object.dart';

/// auto generated
class AmountDetailsLineItemsGetResponse
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about each object.
  Iterable<PaymentIntentAmountDetailsLineItem>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  AmountDetailsLineItemsGetResponseObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [AmountDetailsLineItemsGetResponse] and sets the default values.
  AmountDetailsLineItemsGetResponse() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AmountDetailsLineItemsGetResponse createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AmountDetailsLineItemsGetResponse();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<PaymentIntentAmountDetailsLineItem>(
            PaymentIntentAmountDetailsLineItem.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AmountDetailsLineItemsGetResponseObject>(
            (stringValue) => AmountDetailsLineItemsGetResponseObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<PaymentIntentAmountDetailsLineItem>(
        'data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<AmountDetailsLineItemsGetResponseObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
