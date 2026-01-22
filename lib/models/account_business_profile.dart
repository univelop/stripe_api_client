// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_annual_revenue.dart';
import './account_business_profile_minority_owned_business_designation.dart';
import './account_monthly_estimated_revenue.dart';
import './address.dart';

/// auto generated
class AccountBusinessProfile implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The applicant's gross annual revenue for its preceding fiscal year.
  AccountAnnualRevenue? annualRevenue;

  ///  An estimated upper bound of employees, contractors, vendors, etc. currently working for the business.
  int? estimatedWorkerCount;

  ///  [The merchant category code for the account](/connect/setting-mcc). MCCs are used to classify businesses based on the goods or services they provide.
  String? mcc;

  ///  Whether the business is a minority-owned, women-owned, and/or LGBTQI+ -owned business.
  Iterable<AccountBusinessProfileMinorityOwnedBusinessDesignation>?
      minorityOwnedBusinessDesignation;

  ///  The monthly_estimated_revenue property
  AccountMonthlyEstimatedRevenue? monthlyEstimatedRevenue;

  ///  The customer-facing business name.
  String? name;

  ///  Internal-only description of the product sold or service provided by the business. It's used by Stripe for risk and underwriting purposes.
  String? productDescription;

  ///  A publicly available mailing address for sending support issues to.
  Address? supportAddress;

  ///  A publicly available email address for sending support issues to.
  String? supportEmail;

  ///  A publicly available phone number to call with support issues.
  String? supportPhone;

  ///  A publicly available website for handling support issues.
  String? supportUrl;

  ///  The business's publicly available website.
  String? url;

  /// Instantiates a new [AccountBusinessProfile] and sets the default values.
  AccountBusinessProfile() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountBusinessProfile createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountBusinessProfile();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['annual_revenue'] = (node) => annualRevenue =
        node.getObjectValue<AccountAnnualRevenue>(
            AccountAnnualRevenue.createFromDiscriminatorValue);
    deserializerMap['estimated_worker_count'] =
        (node) => estimatedWorkerCount = node.getIntValue();
    deserializerMap['mcc'] = (node) => mcc = node.getStringValue();
    deserializerMap['minority_owned_business_designation'] = (node) =>
        minorityOwnedBusinessDesignation = node.getCollectionOfEnumValues<
                AccountBusinessProfileMinorityOwnedBusinessDesignation>(
            (stringValue) =>
                AccountBusinessProfileMinorityOwnedBusinessDesignation.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['monthly_estimated_revenue'] = (node) =>
        monthlyEstimatedRevenue =
            node.getObjectValue<AccountMonthlyEstimatedRevenue>(
                AccountMonthlyEstimatedRevenue.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['product_description'] =
        (node) => productDescription = node.getStringValue();
    deserializerMap['support_address'] = (node) => supportAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['support_email'] =
        (node) => supportEmail = node.getStringValue();
    deserializerMap['support_phone'] =
        (node) => supportPhone = node.getStringValue();
    deserializerMap['support_url'] =
        (node) => supportUrl = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountAnnualRevenue>(
        'annual_revenue', annualRevenue);
    writer.writeIntValue('estimated_worker_count', estimatedWorkerCount);
    writer.writeStringValue('mcc', mcc);
    writer.writeCollectionOfEnumValues<
            AccountBusinessProfileMinorityOwnedBusinessDesignation>(
        'minority_owned_business_designation',
        minorityOwnedBusinessDesignation,
        (e) => e?.value);
    writer.writeObjectValue<AccountMonthlyEstimatedRevenue>(
        'monthly_estimated_revenue', monthlyEstimatedRevenue);
    writer.writeStringValue('name', name);
    writer.writeStringValue('product_description', productDescription);
    writer.writeObjectValue<Address>('support_address', supportAddress);
    writer.writeStringValue('support_email', supportEmail);
    writer.writeStringValue('support_phone', supportPhone);
    writer.writeStringValue('support_url', supportUrl);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
