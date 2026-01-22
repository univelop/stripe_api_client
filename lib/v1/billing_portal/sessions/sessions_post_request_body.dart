// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_flow_data.dart';
import './sessions_post_request_body_locale.dart';

/// auto generated
class SessionsPostRequestBody implements Parsable {
  ///  The ID of an existing [configuration](https://docs.stripe.com/api/customer_portal/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
  String? configuration;

  ///  The ID of an existing customer.
  String? customer;

  ///  The ID of an existing account.
  String? customerAccount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Information about a specific flow for the customer to go through. See the [docs](https://docs.stripe.com/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
  SessionsPostRequestBodyFlowData? flowData;

  ///  The IETF language tag of the locale customer portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
  SessionsPostRequestBodyLocale? locale;

  ///  The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://docs.stripe.com/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://docs.stripe.com/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
  String? onBehalfOf;

  ///  The default URL to redirect customers to when they click on the portal's link to return to your website.
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
    deserializerMap['configuration'] =
        (node) => configuration = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['flow_data'] = (node) => flowData =
        node.getObjectValue<SessionsPostRequestBodyFlowData>(
            SessionsPostRequestBodyFlowData.createFromDiscriminatorValue);
    deserializerMap['locale'] = (node) => locale =
        node.getEnumValue<SessionsPostRequestBodyLocale>((stringValue) =>
            SessionsPostRequestBodyLocale.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('configuration', configuration);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<SessionsPostRequestBodyFlowData>(
        'flow_data', flowData);
    writer.writeEnumValue<SessionsPostRequestBodyLocale>(
        'locale', locale, (e) => e?.value);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeStringValue('return_url', returnUrl);
  }
}
