// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_subscription_details_billing_cycle_anchor.dart';
import './create_preview_post_request_body_subscription_details_billing_mode.dart';
import './create_preview_post_request_body_subscription_details_cancel_at.dart';
import './create_preview_post_request_body_subscription_details_default_tax_rates.dart';
import './create_preview_post_request_body_subscription_details_items.dart';
import './create_preview_post_request_body_subscription_details_proration_behavior.dart';
import './create_preview_post_request_body_subscription_details_resume_at.dart';
import './create_preview_post_request_body_subscription_details_trial_end.dart';

/// auto generated
/// The subscription creation or modification params to apply as a preview. Cannot be used with `schedule` or `schedule_details` fields.
class CreatePreviewPostRequestBodySubscriptionDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_cycle_anchor property
  CreatePreviewPostRequestBodySubscriptionDetailsBillingCycleAnchor?
      billingCycleAnchor;

  ///  The billing_mode property
  CreatePreviewPostRequestBodySubscriptionDetailsBillingMode? billingMode;

  ///  The cancel_at property
  CreatePreviewPostRequestBodySubscriptionDetailsCancelAt? cancelAt;

  ///  The cancel_at_period_end property
  bool? cancelAtPeriodEnd;

  ///  The cancel_now property
  bool? cancelNow;

  ///  The default_tax_rates property
  CreatePreviewPostRequestBodySubscriptionDetailsDefaultTaxRates?
      defaultTaxRates;

  ///  The items property
  Iterable<CreatePreviewPostRequestBodySubscriptionDetailsItems>? items;

  ///  The proration_behavior property
  CreatePreviewPostRequestBodySubscriptionDetailsProrationBehavior?
      prorationBehavior;

  ///  The proration_date property
  int? prorationDate;

  ///  The resume_at property
  CreatePreviewPostRequestBodySubscriptionDetailsResumeAt? resumeAt;

  ///  The start_date property
  int? startDate;

  ///  The trial_end property
  CreatePreviewPostRequestBodySubscriptionDetailsTrialEnd? trialEnd;

  /// Instantiates a new [CreatePreviewPostRequestBodySubscriptionDetails] and sets the default values.
  CreatePreviewPostRequestBodySubscriptionDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodySubscriptionDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodySubscriptionDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getObjectValue<
                CreatePreviewPostRequestBodySubscriptionDetailsBillingCycleAnchor>(
            CreatePreviewPostRequestBodySubscriptionDetailsBillingCycleAnchor
                .createFromDiscriminatorValue);
    deserializerMap['billing_mode'] = (node) => billingMode =
        node.getObjectValue<
                CreatePreviewPostRequestBodySubscriptionDetailsBillingMode>(
            CreatePreviewPostRequestBodySubscriptionDetailsBillingMode
                .createFromDiscriminatorValue);
    deserializerMap['cancel_at'] = (node) => cancelAt = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsCancelAt>(
        CreatePreviewPostRequestBodySubscriptionDetailsCancelAt
            .createFromDiscriminatorValue);
    deserializerMap['cancel_at_period_end'] =
        (node) => cancelAtPeriodEnd = node.getBoolValue();
    deserializerMap['cancel_now'] = (node) => cancelNow = node.getBoolValue();
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<
                CreatePreviewPostRequestBodySubscriptionDetailsDefaultTaxRates>(
            CreatePreviewPostRequestBodySubscriptionDetailsDefaultTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items =
        node.getCollectionOfObjectValues<
                CreatePreviewPostRequestBodySubscriptionDetailsItems>(
            CreatePreviewPostRequestBodySubscriptionDetailsItems
                .createFromDiscriminatorValue);
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            CreatePreviewPostRequestBodySubscriptionDetailsProrationBehavior>(
        (stringValue) =>
            CreatePreviewPostRequestBodySubscriptionDetailsProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_date'] =
        (node) => prorationDate = node.getIntValue();
    deserializerMap['resume_at'] = (node) => resumeAt = node
        .getEnumValue<CreatePreviewPostRequestBodySubscriptionDetailsResumeAt>(
            (stringValue) =>
                CreatePreviewPostRequestBodySubscriptionDetailsResumeAt.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['start_date'] = (node) => startDate = node.getIntValue();
    deserializerMap['trial_end'] = (node) => trialEnd = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsTrialEnd>(
        CreatePreviewPostRequestBodySubscriptionDetailsTrialEnd
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsBillingMode>(
        'billing_mode', billingMode);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsCancelAt>(
        'cancel_at', cancelAt);
    writer.writeBoolValue('cancel_at_period_end', value: cancelAtPeriodEnd);
    writer.writeBoolValue('cancel_now', value: cancelNow);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeCollectionOfObjectValues<
        CreatePreviewPostRequestBodySubscriptionDetailsItems>('items', items);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodySubscriptionDetailsProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('proration_date', prorationDate);
    writer.writeEnumValue<
            CreatePreviewPostRequestBodySubscriptionDetailsResumeAt>(
        'resume_at', resumeAt, (e) => e?.value);
    writer.writeIntValue('start_date', startDate);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsTrialEnd>(
        'trial_end', trialEnd);
    writer.writeAdditionalData(additionalData);
  }
}
