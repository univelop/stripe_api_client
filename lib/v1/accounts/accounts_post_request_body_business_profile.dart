// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_business_profile_annual_revenue.dart';
import './accounts_post_request_body_business_profile_minority_owned_business_designation.dart';
import './accounts_post_request_body_business_profile_monthly_estimated_revenue.dart';
import './accounts_post_request_body_business_profile_support_address.dart';
import './accounts_post_request_body_business_profile_support_url.dart';

/// auto generated
/// Business information about the account.
class AccountsPostRequestBodyBusinessProfile
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The annual_revenue property
  AccountsPostRequestBodyBusinessProfileAnnualRevenue? annualRevenue;

  ///  The estimated_worker_count property
  int? estimatedWorkerCount;

  ///  The mcc property
  String? mcc;

  ///  The minority_owned_business_designation property
  Iterable<
          AccountsPostRequestBodyBusinessProfileMinorityOwnedBusinessDesignation>?
      minorityOwnedBusinessDesignation;

  ///  The monthly_estimated_revenue property
  AccountsPostRequestBodyBusinessProfileMonthlyEstimatedRevenue?
      monthlyEstimatedRevenue;

  ///  The name property
  String? name;

  ///  The product_description property
  String? productDescription;

  ///  The support_address property
  AccountsPostRequestBodyBusinessProfileSupportAddress? supportAddress;

  ///  The support_email property
  String? supportEmail;

  ///  The support_phone property
  String? supportPhone;

  ///  The support_url property
  AccountsPostRequestBodyBusinessProfileSupportUrl? supportUrl;

  ///  The url property
  String? url;

  /// Instantiates a new [AccountsPostRequestBodyBusinessProfile] and sets the default values.
  AccountsPostRequestBodyBusinessProfile() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyBusinessProfile createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyBusinessProfile();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['annual_revenue'] = (node) => annualRevenue = node
        .getObjectValue<AccountsPostRequestBodyBusinessProfileAnnualRevenue>(
            AccountsPostRequestBodyBusinessProfileAnnualRevenue
                .createFromDiscriminatorValue);
    deserializerMap['estimated_worker_count'] =
        (node) => estimatedWorkerCount = node.getIntValue();
    deserializerMap['mcc'] = (node) => mcc = node.getStringValue();
    deserializerMap['minority_owned_business_designation'] = (node) =>
        minorityOwnedBusinessDesignation = node.getCollectionOfEnumValues<
                AccountsPostRequestBodyBusinessProfileMinorityOwnedBusinessDesignation>(
            (stringValue) =>
                AccountsPostRequestBodyBusinessProfileMinorityOwnedBusinessDesignation
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['monthly_estimated_revenue'] = (node) =>
        monthlyEstimatedRevenue = node.getObjectValue<
                AccountsPostRequestBodyBusinessProfileMonthlyEstimatedRevenue>(
            AccountsPostRequestBodyBusinessProfileMonthlyEstimatedRevenue
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['support_address'] = (node) => supportAddress = node
        .getObjectValue<AccountsPostRequestBodyBusinessProfileSupportAddress>(
            AccountsPostRequestBodyBusinessProfileSupportAddress
                .createFromDiscriminatorValue);
    deserializerMap['support_email'] =
        (node) => supportEmail = node.getStringValue();
    deserializerMap['support_phone'] =
        (node) => supportPhone = node.getStringValue();
    deserializerMap['support_url'] = (node) => supportUrl =
        node.getObjectValue<AccountsPostRequestBodyBusinessProfileSupportUrl>(
            AccountsPostRequestBodyBusinessProfileSupportUrl
                .createFromDiscriminatorValue);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<AccountsPostRequestBodyBusinessProfileAnnualRevenue>(
            'annual_revenue', annualRevenue);
    writer.writeIntValue('estimated_worker_count', estimatedWorkerCount);
    writer.writeStringValue('mcc', mcc);
    writer.writeCollectionOfEnumValues<
            AccountsPostRequestBodyBusinessProfileMinorityOwnedBusinessDesignation>(
        'minority_owned_business_designation',
        minorityOwnedBusinessDesignation,
        (e) => e?.value);
    writer.writeObjectValue<
            AccountsPostRequestBodyBusinessProfileMonthlyEstimatedRevenue>(
        'monthly_estimated_revenue', monthlyEstimatedRevenue);
    writer.writeStringValue('name', name);
    writer.writeStringValue('product_description', productDescription);
    writer
        .writeObjectValue<AccountsPostRequestBodyBusinessProfileSupportAddress>(
            'support_address', supportAddress);
    writer.writeStringValue('support_email', supportEmail);
    writer.writeStringValue('support_phone', supportPhone);
    writer.writeObjectValue<AccountsPostRequestBodyBusinessProfileSupportUrl>(
        'support_url', supportUrl);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
