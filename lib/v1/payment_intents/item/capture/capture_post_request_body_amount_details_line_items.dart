// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './capture_post_request_body_amount_details_line_items_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<CapturePostRequestBodyAmountDetailsLineItemsMember1>], [String?]
class CapturePostRequestBodyAmountDetailsLineItems implements Parsable {
  ///  Composed type representation for type [Iterable<CapturePostRequestBodyAmountDetailsLineItemsMember1>]
  Iterable<CapturePostRequestBodyAmountDetailsLineItemsMember1>?
      capturePostRequestBodyAmountDetailsLineItemsMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CapturePostRequestBodyAmountDetailsLineItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = CapturePostRequestBodyAmountDetailsLineItems();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                CapturePostRequestBodyAmountDetailsLineItemsMember1>(
            CapturePostRequestBodyAmountDetailsLineItemsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.capturePostRequestBodyAmountDetailsLineItemsMember1 =
          parseNode.getCollectionOfObjectValues<
                  CapturePostRequestBodyAmountDetailsLineItemsMember1>(
              CapturePostRequestBodyAmountDetailsLineItemsMember1
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
    } else if (capturePostRequestBodyAmountDetailsLineItemsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              CapturePostRequestBodyAmountDetailsLineItemsMember1>(
          null, capturePostRequestBodyAmountDetailsLineItemsMember1);
    }
  }
}
