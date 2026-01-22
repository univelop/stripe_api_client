// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_account_holder.dart';
import './sessions_post_request_body_filters.dart';
import './sessions_post_request_body_permissions.dart';
import './sessions_post_request_body_prefetch.dart';

/// auto generated
class SessionsPostRequestBody implements Parsable {
  ///  The account holder to link accounts for.
  SessionsPostRequestBodyAccountHolder? accountHolder;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Filters to restrict the kinds of accounts to collect.
  SessionsPostRequestBodyFilters? filters;

  ///  List of data features that you would like to request access to.Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
  Iterable<SessionsPostRequestBodyPermissions>? permissions;

  ///  List of data features that you would like to retrieve upon account creation.
  Iterable<SessionsPostRequestBodyPrefetch>? prefetch;

  ///  For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
  String? returnUrl;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder'] = (node) => accountHolder =
        node.getObjectValue<SessionsPostRequestBodyAccountHolder>(
            SessionsPostRequestBodyAccountHolder.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['filters'] = (node) => filters =
        node.getObjectValue<SessionsPostRequestBodyFilters>(
            SessionsPostRequestBodyFilters.createFromDiscriminatorValue);
    deserializerMap['permissions'] = (node) => permissions =
        node.getCollectionOfEnumValues<SessionsPostRequestBodyPermissions>(
            (stringValue) => SessionsPostRequestBodyPermissions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['prefetch'] = (node) => prefetch =
        node.getCollectionOfEnumValues<SessionsPostRequestBodyPrefetch>(
            (stringValue) => SessionsPostRequestBodyPrefetch.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyAccountHolder>(
        'account_holder', accountHolder);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<SessionsPostRequestBodyFilters>('filters', filters);
    writer.writeCollectionOfEnumValues<SessionsPostRequestBodyPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<SessionsPostRequestBodyPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
  }
}
