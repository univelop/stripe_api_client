// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_amount_details_line_items_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>], [String?]
class PaymentIntentsPostRequestBodyAmountDetailsLineItems implements Parsable {
  ///  Composed type representation for type [Iterable<PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>]
  Iterable<PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>?
      paymentIntentsPostRequestBodyAmountDetailsLineItemsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyAmountDetailsLineItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = PaymentIntentsPostRequestBodyAmountDetailsLineItems();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>(
            PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.paymentIntentsPostRequestBodyAmountDetailsLineItemsMember1 =
          parseNode.getCollectionOfObjectValues<
                  PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>(
              PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (paymentIntentsPostRequestBodyAmountDetailsLineItemsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              PaymentIntentsPostRequestBodyAmountDetailsLineItemsMember1>(
          null, paymentIntentsPostRequestBodyAmountDetailsLineItemsMember1);
    }
  }
}
