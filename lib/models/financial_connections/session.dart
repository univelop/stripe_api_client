// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../bank_connections_resource_accountholder.dart';
import '../bank_connections_resource_link_account_session_filters.dart';
import './session_accounts.dart';
import './session_object.dart';
import './session_permissions.dart';
import './session_prefetch.dart';

/// auto generated
/// A Financial Connections Session is the secure way to programmatically launch the client-side Stripe.js modal that lets your users link their accounts.
class Session implements AdditionalDataHolder, Parsable {
  ///  The account holder for whom accounts are collected in this session.
  BankConnectionsResourceAccountholder? accountHolder;

  ///  The accounts that were collected as part of this Session.
  SessionAccounts? accounts;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A value that will be passed to the client to launch the authentication flow.
  String? clientSecret;

  ///  The filters property
  BankConnectionsResourceLinkAccountSessionFilters? filters;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  SessionObject? object;

  ///  Permissions requested for accounts collected during this session.
  Iterable<SessionPermissions>? permissions;

  ///  Data features requested to be retrieved upon account creation.
  Iterable<SessionPrefetch>? prefetch;

  ///  For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
  String? returnUrl;

  /// Instantiates a new [Session] and sets the default values.
  Session() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Session createFromDiscriminatorValue(ParseNode parseNode) {
    return Session();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder'] = (node) => accountHolder =
        node.getObjectValue<BankConnectionsResourceAccountholder>(
            BankConnectionsResourceAccountholder.createFromDiscriminatorValue);
    deserializerMap['accounts'] = (node) => accounts =
        node.getObjectValue<SessionAccounts>(
            SessionAccounts.createFromDiscriminatorValue);
    deserializerMap['client_secret'] =
        (node) => clientSecret = node.getStringValue();
    deserializerMap['filters'] = (node) => filters =
        node.getObjectValue<BankConnectionsResourceLinkAccountSessionFilters>(
            BankConnectionsResourceLinkAccountSessionFilters
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SessionObject>((stringValue) => SessionObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['permissions'] = (node) => permissions =
        node.getCollectionOfEnumValues<SessionPermissions>((stringValue) =>
            SessionPermissions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['prefetch'] = (node) => prefetch =
        node.getCollectionOfEnumValues<SessionPrefetch>((stringValue) =>
            SessionPrefetch.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankConnectionsResourceAccountholder>(
        'account_holder', accountHolder);
    writer.writeObjectValue<SessionAccounts>('accounts', accounts);
    writer.writeStringValue('client_secret', clientSecret);
    writer.writeObjectValue<BankConnectionsResourceLinkAccountSessionFilters>(
        'filters', filters);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SessionObject>('object', object, (e) => e?.value);
    writer.writeCollectionOfEnumValues<SessionPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<SessionPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeAdditionalData(additionalData);
  }
}
