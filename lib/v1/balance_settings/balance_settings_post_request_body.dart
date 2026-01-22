// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_settings_post_request_body_payments.dart';

/// auto generated
class BalanceSettingsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Settings that apply to the [Payments Balance](https://docs.stripe.com/api/balance).
  BalanceSettingsPostRequestBodyPayments? payments;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceSettingsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BalanceSettingsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['payments'] = (node) => payments = node.getObjectValue<
            BalanceSettingsPostRequestBodyPayments>(
        BalanceSettingsPostRequestBodyPayments.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<BalanceSettingsPostRequestBodyPayments>(
        'payments', payments);
  }
}
