// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cash_balance_post_request_body_settings.dart';

/// auto generated
class CashBalancePostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A hash of settings for this cash balance.
  CashBalancePostRequestBodySettings? settings;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CashBalancePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CashBalancePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['settings'] = (node) => settings =
        node.getObjectValue<CashBalancePostRequestBodySettings>(
            CashBalancePostRequestBodySettings.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CashBalancePostRequestBodySettings>(
        'settings', settings);
  }
}
