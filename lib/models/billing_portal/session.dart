// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../portal_flows_flow.dart';
import './session_configuration.dart';
import './session_locale.dart';
import './session_object.dart';

/// auto generated
/// The Billing customer portal is a Stripe-hosted UI for subscription andbilling management.A portal configuration describes the functionality and features that youwant to provide to your customers through the portal.A portal session describes the instantiation of the customer portal fora particular customer. By visiting the session's URL, the customercan manage their subscriptions and billing details. For security reasons,sessions are short-lived and will expire if the customer does not visit the URL.Create sessions on-demand when customers intend to manage their subscriptionsand billing details.Related guide: [Customer management](/customer-management)
class Session implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The configuration used by this session, describing the features available.
  SessionConfiguration? configuration;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The ID of the customer for this session.
  String? customer;

  ///  The ID of the account for this session.
  String? customerAccount;

  ///  Information about a specific flow for the customer to go through. See the [docs](https://docs.stripe.com/customer-management/portal-deep-links) to learn more about using customer portal deep links and flows.
  PortalFlowsFlow? flow;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
  SessionLocale? locale;

  ///  String representing the object's type. Objects of the same type share the same value.
  SessionObject? object;

  ///  The account for which the session was created on behalf of. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://docs.stripe.com/connect/separate-charges-and-transfers#settlement-merchant). Use the [Accounts API](https://docs.stripe.com/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
  String? onBehalfOf;

  ///  The URL to redirect customers to when they click on the portal's link to return to your website.
  String? returnUrl;

  ///  The short-lived URL of the session that gives customers access to the customer portal.
  String? url;

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
    deserializerMap['configuration'] = (node) => configuration =
        node.getObjectValue<SessionConfiguration>(
            SessionConfiguration.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['flow'] = (node) => flow =
        node.getObjectValue<PortalFlowsFlow>(
            PortalFlowsFlow.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['locale'] = (node) => locale =
        node.getEnumValue<SessionLocale>((stringValue) => SessionLocale.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SessionObject>((stringValue) => SessionObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['return_url'] = (node) => returnUrl = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionConfiguration>(
        'configuration', configuration);
    writer.writeIntValue('created', created);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<PortalFlowsFlow>('flow', flow);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<SessionLocale>('locale', locale, (e) => e?.value);
    writer.writeEnumValue<SessionObject>('object', object, (e) => e?.value);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeStringValue('return_url', returnUrl);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
