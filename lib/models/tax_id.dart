// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_i_ds_owner.dart';
import './tax_id_customer.dart';
import './tax_id_object.dart';
import './tax_id_type.dart';
import './tax_id_verification.dart';

/// auto generated
/// You can add one or multiple tax IDs to a [customer](https://docs.stripe.com/api/customers) or account.Customer and account tax IDs get displayed on related invoices and credit notes.Related guides: [Customer tax identification numbers](https://docs.stripe.com/billing/taxes/tax-ids), [Account tax IDs](https://docs.stripe.com/invoicing/connect#account-tax-ids)
class TaxId implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Two-letter ISO code representing the country of the tax ID.
  String? country;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  ID of the customer.
  TaxIdCustomer? customer;

  ///  ID of the Account representing the customer.
  String? customerAccount;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  TaxIdObject? object;

  ///  The account or customer the tax ID belongs to.
  TaxIDsOwner? owner;

  ///  Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`. Note that some legacy tax IDs have type `unknown`
  TaxIdType? type_;

  ///  Value of the tax ID.
  String? value;

  ///  Tax ID verification information.
  TaxIdVerification? verification;

  /// Instantiates a new [TaxId] and sets the default values.
  TaxId() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxId createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxId();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<TaxIdCustomer>(
            TaxIdCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TaxIdObject>((stringValue) => TaxIdObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['owner'] = (node) => owner = node
        .getObjectValue<TaxIDsOwner>(TaxIDsOwner.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<TaxIdType>(
        (stringValue) => TaxIdType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getStringValue();
    deserializerMap['verification'] = (node) => verification =
        node.getObjectValue<TaxIdVerification>(
            TaxIdVerification.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('country', country);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<TaxIdCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<TaxIdObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<TaxIDsOwner>('owner', owner);
    writer.writeEnumValue<TaxIdType>('type', type_, (e) => e?.value);
    writer.writeStringValue('value', value);
    writer.writeObjectValue<TaxIdVerification>('verification', verification);
    writer.writeAdditionalData(additionalData);
  }
}
