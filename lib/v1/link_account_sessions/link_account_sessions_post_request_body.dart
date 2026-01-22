// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './link_account_sessions_post_request_body_account_holder.dart';
import './link_account_sessions_post_request_body_filters.dart';
import './link_account_sessions_post_request_body_permissions.dart';
import './link_account_sessions_post_request_body_prefetch.dart';

/// auto generated
class LinkAccountSessionsPostRequestBody implements Parsable {
  ///  The account holder to link accounts for.
  LinkAccountSessionsPostRequestBodyAccountHolder? accountHolder;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Filters to restrict the kinds of accounts to collect.
  LinkAccountSessionsPostRequestBodyFilters? filters;

  ///  List of data features that you would like to request access to.Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
  Iterable<LinkAccountSessionsPostRequestBodyPermissions>? permissions;

  ///  List of data features that you would like to retrieve upon account creation.
  Iterable<LinkAccountSessionsPostRequestBodyPrefetch>? prefetch;

  ///  For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
  String? returnUrl;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LinkAccountSessionsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LinkAccountSessionsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder'] = (node) => accountHolder =
        node.getObjectValue<LinkAccountSessionsPostRequestBodyAccountHolder>(
            LinkAccountSessionsPostRequestBodyAccountHolder
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['filters'] = (node) => filters = node.getObjectValue<
            LinkAccountSessionsPostRequestBodyFilters>(
        LinkAccountSessionsPostRequestBodyFilters.createFromDiscriminatorValue);
    deserializerMap['permissions'] = (node) => permissions =
        node.getCollectionOfEnumValues<
                LinkAccountSessionsPostRequestBodyPermissions>(
            (stringValue) => LinkAccountSessionsPostRequestBodyPermissions
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['prefetch'] = (node) => prefetch = node
        .getCollectionOfEnumValues<LinkAccountSessionsPostRequestBodyPrefetch>(
            (stringValue) => LinkAccountSessionsPostRequestBodyPrefetch.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<LinkAccountSessionsPostRequestBodyAccountHolder>(
        'account_holder', accountHolder);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<LinkAccountSessionsPostRequestBodyFilters>(
        'filters', filters);
    writer.writeCollectionOfEnumValues<
            LinkAccountSessionsPostRequestBodyPermissions>(
        'permissions', permissions, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            LinkAccountSessionsPostRequestBodyPrefetch>(
        'prefetch', prefetch, (e) => e?.value);
    writer.writeStringValue('return_url', returnUrl);
  }
}
