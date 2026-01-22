// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_types_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>], [String?]
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes
    implements Parsable {
  ///  Composed type representation for type [Iterable<InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>]
  Iterable<InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>?
      invoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.invoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1 =
          parseNode.getCollectionOfObjectValues<
                  InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
              InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1
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
    } else if (invoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1>(
          null,
          invoicesPostRequestBodyPaymentSettingsPaymentMethodTypesMember1);
    }
  }
}
