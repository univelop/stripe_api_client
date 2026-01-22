// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_sessions_post_request_body_components.dart';

/// auto generated
class AccountSessionsPostRequestBody implements Parsable {
  ///  The identifier of the account to create an Account Session for.
  String? account;

  ///  Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
  AccountSessionsPostRequestBodyComponents? components;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountSessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['components'] = (node) => components = node.getObjectValue<
            AccountSessionsPostRequestBodyComponents>(
        AccountSessionsPostRequestBodyComponents.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeObjectValue<AccountSessionsPostRequestBodyComponents>(
        'components', components);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
