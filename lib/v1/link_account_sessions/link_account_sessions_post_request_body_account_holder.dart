// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './link_account_sessions_post_request_body_account_holder_type.dart';

/// auto generated
/// The account holder to link accounts for.
class LinkAccountSessionsPostRequestBodyAccountHolder
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer property
  String? customer;

  ///  The customer_account property
  String? customerAccount;

  ///  The type property
  LinkAccountSessionsPostRequestBodyAccountHolderType? type_;

  /// Instantiates a new [LinkAccountSessionsPostRequestBodyAccountHolder] and sets the default values.
  LinkAccountSessionsPostRequestBodyAccountHolder() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LinkAccountSessionsPostRequestBodyAccountHolder
      createFromDiscriminatorValue(ParseNode parseNode) {
    return LinkAccountSessionsPostRequestBodyAccountHolder();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<LinkAccountSessionsPostRequestBodyAccountHolderType>(
            (stringValue) => LinkAccountSessionsPostRequestBodyAccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<LinkAccountSessionsPostRequestBodyAccountHolderType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
