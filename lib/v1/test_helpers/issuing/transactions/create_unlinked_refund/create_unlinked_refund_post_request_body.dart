// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_unlinked_refund_post_request_body_merchant_data.dart';
import './create_unlinked_refund_post_request_body_purchase_details.dart';

/// auto generated
class CreateUnlinkedRefundPostRequestBody implements Parsable {
  ///  The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Card associated with this unlinked refund transaction.
  String? card;

  ///  The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
  CreateUnlinkedRefundPostRequestBodyMerchantData? merchantData;

  ///  Additional purchase information that is optionally provided by the merchant.
  CreateUnlinkedRefundPostRequestBodyPurchaseDetails? purchaseDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreateUnlinkedRefundPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreateUnlinkedRefundPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['card'] = (node) => card = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['merchant_data'] = (node) => merchantData =
        node.getObjectValue<CreateUnlinkedRefundPostRequestBodyMerchantData>(
            CreateUnlinkedRefundPostRequestBodyMerchantData
                .createFromDiscriminatorValue);
    deserializerMap['purchase_details'] = (node) => purchaseDetails =
        node.getObjectValue<CreateUnlinkedRefundPostRequestBodyPurchaseDetails>(
            CreateUnlinkedRefundPostRequestBodyPurchaseDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('card', card);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CreateUnlinkedRefundPostRequestBodyMerchantData>(
        'merchant_data', merchantData);
    writer.writeObjectValue<CreateUnlinkedRefundPostRequestBodyPurchaseDetails>(
        'purchase_details', purchaseDetails);
  }
}
