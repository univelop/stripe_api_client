// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_excluded_payment_method_types_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>], [String?]
class ConfirmPostRequestBodyExcludedPaymentMethodTypes implements Parsable {
  ///  Composed type representation for type [Iterable<ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>]
  Iterable<ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>?
      confirmPostRequestBodyExcludedPaymentMethodTypesMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyExcludedPaymentMethodTypes
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = ConfirmPostRequestBodyExcludedPaymentMethodTypes();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>(
            ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.confirmPostRequestBodyExcludedPaymentMethodTypesMember1 =
          parseNode.getCollectionOfObjectValues<
                  ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>(
              ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1
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
    } else if (confirmPostRequestBodyExcludedPaymentMethodTypesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              ConfirmPostRequestBodyExcludedPaymentMethodTypesMember1>(
          null, confirmPostRequestBodyExcludedPaymentMethodTypesMember1);
    }
  }
}
