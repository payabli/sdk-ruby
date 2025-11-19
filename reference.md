# Reference
## Bill
<details><summary><code>client.bill.add_bill(entry, request) -> Payabli::Bill::Types::BillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a bill in an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.add_bill(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Bill::Types::BillOutData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.delete_attached_from_bill(filename, id_bill) -> Payabli::Bill::Types::BillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a file attached to a bill.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.delete_attached_from_bill(
  filename: '0_Bill.pdf',
  idBill: 285
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filename:** `String` 

The filename in Payabli. Filename is `zipName` in response to a
request to `/api/Invoice/{idInvoice}`. Here, the filename is
`0_Bill.pdf`. 

```json
  "DocumentsRef": {
    "zipfile": "inva_269.zip",
    "filelist": [
      {
        "originalName": "Bill.pdf",
        "zipName": "0_Bill.pdf",
        "descriptor": null
      }
    ]
  }
  ```
    
</dd>
</dl>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**return_object:** `Internal::Types::Boolean` — When `true`, the request returns the file content as a Base64-encoded string.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.delete_bill(id_bill) -> Payabli::Bill::Types::BillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a bill by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.delete_bill();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.edit_bill(id_bill, request) -> Payabli::Bill::Types::EditBillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a bill by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.edit_bill({
  netAmount: 3762.87,
  billDate: '2025-07-01'
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Bill::Types::BillOutData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.get_attached_from_bill(filename, id_bill) -> Payabli::Types::FileContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a file attached to a bill, either as a binary file or as a Base64-encoded string.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.get_attached_from_bill(
  filename: '0_Bill.pdf',
  idBill: 285,
  returnObject: true
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filename:** `String` 

The filename in Payabli. Filename is `zipName` in response to a request to `/api/Invoice/{idInvoice}`. Here, the filename is `0_Bill.pdf``. 
"DocumentsRef": {
  "zipfile": "inva_269.zip",
  "filelist": [
    {
      "originalName": "Bill.pdf",
      "zipName": "0_Bill.pdf",
      "descriptor": null
    }
  ]
}
    
</dd>
</dl>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**return_object:** `Internal::Types::Boolean` — When `true`, the request returns the file content as a Base64-encoded string.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.get_bill(id_bill) -> Payabli::Bill::Types::GetBillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a bill by ID from an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.get_bill();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.list_bills(entry) -> Payabli::Types::BillQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of bills for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.list_bills(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set. 
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response isn't filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `frequency` (`in`, `nin`, `ne`, `eq`)
- `method` (`in`, `nin`, `eq`, `ne`)
- `event` (`in`, `nin`, `eq`, `ne`)
- `target` (`ct`, `nct`, `eq`, `ne`)
- `status` (`eq`, `ne`)
- `approvalUserId` (`eq`, `ne`)
- `parentOrgId` (`ne`, `eq`, `nin`, `in`)
- `approvalUserEmail` (`eq`, `ne`)
- `scheduleId` (`ne`, `eq`)

List of comparison accepted - enclosed between parentheses:
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array

List of parameters accepted:
- `limitRecord` : max number of records for query (default="20", "0" or negative value for all)
- `fromRecord` : initial record in query
Example: `totalAmount(gt)=20` returns all records with a `totalAmount` that's greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.list_bills_org(org_id) -> Payabli::Types::BillQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of bills for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.list_bills_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response isn't filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `frequency` (in, nin, ne, eq)
- `method` (in, nin, eq, ne)
- `event` (in, nin, eq, ne)
- `target` (ct, nct, eq, ne)
- `status` (eq, ne)
- `parentOrgId` (ne, eq, nin, in)
- `approvalUserId` (eq, ne)
- `approvalUserEmail` (eq, ne)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20 return all records with totalAmount greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.modify_approval_bill(id_bill, request) -> Payabli::Bill::Types::ModifyApprovalBillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Modify the list of users the bill is sent to for approval.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.modify_approval_bill();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Array[String]` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.send_to_approval_bill(id_bill, request) -> Payabli::Bill::Types::BillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a bill to a user or list of users to approve.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.send_to_approval_bill(
  idBill: 285,
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**autocreate_user:** `Internal::Types::Boolean` — Automatically create the target user for approval if they don't exist.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Array[String]` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.bill.set_approved_bill(approved, id_bill) -> Payabli::Bill::Types::SetApprovedBillResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Approve or disapprove a bill by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.bill.set_approved_bill(
  approved: 'true',
  idBill: 285
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**approved:** `String` — String representing the approved status. Accepted values: 'true' or 'false'.
    
</dd>
</dl>

<dl>
<dd>

**id_bill:** `Integer` — Payabli ID for the bill. Get this ID by querying `/api/Query/bills/` for the entrypoint or the organization.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email or username of user modifying approval status.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Boarding
<details><summary><code>client.boarding.add_application(request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a boarding application in an organization. This endpoint requires an application API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.add_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Payabli::Boarding::Types::AddApplicationRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.delete_application(app_id) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a boarding application by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.delete_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `Integer` — Boarding application ID. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_application(app_id) -> Payabli::Types::ApplicationDetailsRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details for a boarding application by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `Integer` — Boarding application ID.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_application_by_auth(x_id, request) -> Payabli::Types::ApplicationQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets a boarding application by authentication information. This endpoint requires an `application` API token. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_application_by_auth(
  xId: '17E',
  email: 'admin@email.com',
  referenceId: 'n6UCd1f1ygG7'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**x_id:** `String` — The application ID in Hex format. Find this at the end of the boarding link URL returned in a call to api/Boarding/applink/{appId}/{mail2}. For example in:  `https://boarding-sandbox.payabli.com/boarding/externalapp/load/17E`, the xId is `17E`. 
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — The email address the applicant used to save the application.
    
</dd>
</dl>

<dl>
<dd>

**reference_id:** `String` — The referenceId is sent to the applicant via email when they save the application.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_by_id_link_application(boarding_link_id) -> Payabli::Types::BoardingLinkQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves details for a boarding link, by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_by_id_link_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**boarding_link_id:** `Integer` — The boarding link ID. You can find this at the end of the boarding link reference name. For example `https://boarding.payabli.com/boarding/app/myorgaccountname-00091`. The ID is `91`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_by_template_id_link_application(template_id) -> Payabli::Types::BoardingLinkQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details for a boarding link using the boarding template ID. This endpoint requires an application API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_by_template_id_link_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `Integer` — The boarding template ID. You can find this at the end of the boarding template URL in PartnerHub. Example: `https://partner-sandbox.payabli.com/myorganization/boarding/edittemplate/80`. Here, the template ID is `80`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_external_application(app_id, mail_2) -> Payabli::Types::PayabliApiResponse00</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a link and the verification code used to log into an existing boarding application. You can also use this endpoint to send a link and referenceId for an existing boarding application to an email address. The recipient can use the referenceId and email address to access and edit the application.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_external_application(
  appId: 352,
  mail2: 'mail2'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `Integer` — Boarding application ID. 
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — Email address used to access the application. If `sendEmail` parameter is true, a link to the application is sent to this email address.
    
</dd>
</dl>

<dl>
<dd>

**send_email:** `Internal::Types::Boolean` — If `true`, sends an email that includes the link to the application to the `mail2` address. Defaults to `false`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.get_link_application(boarding_link_reference) -> Payabli::Types::BoardingLinkQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the details for a boarding link, by reference name. This endpoint requires an application API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.get_link_application();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**boarding_link_reference:** `String` — The boarding link reference name. You can find this at the end of the boarding link URL. For example `https://boarding.payabli.com/boarding/app/myorgaccountname-00091`
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.list_applications(org_id) -> Payabli::Types::QueryBoardingAppsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of boarding applications for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.list_applications(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `createdAt` (gt, ge, lt, le, eq, ne)
- `startDate` (gt, ge, lt, le, eq, ne)
- `dbaname` (ct, nct)
- `legalname` (ct, nct)
- `ein` (ct, nct)
- `address` (ct, nct)
- `city` (ct, nct)
- `state` (ct, nct)
- `phone` (ct, nct)
- `mcc` (ct, nct)
- `owntype` (ct, nct)
- `ownerName` (ct, nct)
- `contactName` (ct, nct)
- `status` (in, nin, eq,ne)
- `orgParentname` (ct, nct)
- `externalpaypointID` (ct, nct, eq, ne)
- `repCode` (ct, nct, eq, ne)
- `repName` (ct, nct, eq, ne)
- `repOffice` (ct, nct, eq, ne)
List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.list_boarding_links(org_id) -> Payabli::Types::QueryBoardingLinksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a list of boarding links for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.list_boarding_links(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `lastUpdated` (gt, ge, lt, le, eq, ne)
- `templateName` (ct, nct)
- `referenceName` (ct, nct)
- `acceptRegister` (eq, ne)
- `acceptAuth` (eq, ne)
- `templateCode` (ct, nct)
- `templateId` (eq, ne)
- `orgParentname` (ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than 
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: templateName(ct)=hoa return all records with template title containing "hoa"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.boarding.update_application(app_id, request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a boarding application by ID. This endpoint requires an application API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.boarding.update_application({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `Integer` — Boarding application ID. 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::ApplicationData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ChargeBacks
<details><summary><code>client.charge_backs.add_response(id, request) -> Payabli::ChargeBacks::Types::AddResponseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a response to a chargeback or ACH return.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.charge_backs.add_response(
  id: 1000000,
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — ID of the chargeback or return record.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**attachments:** `Internal::Types::Array[Payabli::Types::FileContent]` — Array of attached files to response.
    
</dd>
</dl>

<dl>
<dd>

**contact_email:** `String` — Email of response submitter.
    
</dd>
</dl>

<dl>
<dd>

**contact_name:** `String` — Name of response submitter
    
</dd>
</dl>

<dl>
<dd>

**notes:** `String` — Response notes
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.charge_backs.get_chargeback(id) -> Payabli::ChargeBacks::Types::ChargebackQueryRecords</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a chargeback record and its details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.charge_backs.get_chargeback();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — ID of the chargeback or return record. This is returned as `chargebackId` in the [RecievedChargeback](/developers/developer-guides/webhook-payloads#receivedChargeback) and [ReceivedAchReturn](/developers/developer-guides/webhook-payloads#receivedachreturn) webhook notifications.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.charge_backs.get_chargeback_attachment(file_name, id) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.charge_backs.get_chargeback_attachment();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_name:** `String` — The chargeback attachment's file name.
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — The ID of chargeback or return record.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CheckCapture
<details><summary><code>client.check_capture.check_processing(request) -> Payabli::CheckCapture::Types::CheckCaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Captures a check for Remote Deposit Capture (RDC) using the provided check images and details. This endpoint handles the OCR extraction of check data including MICR, routing number, account number, and amount. See the [RDC guide](/developers/developer-guides/pay-in-rdc) for more details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.check_capture.check_processing(
  entryPoint: '47abcfea12',
  frontImage: '/9j/4AAQSkZJRgABAQEASABIAAD...',
  rearImage: '/9j/4AAQSkZJRgABAQEASABIAAD...',
  checkAmount: 12550
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry_point:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**front_image:** `String` — Base64-encoded front check image. Must be JPEG or PNG format and less than 1MB. Image must show the entire check clearly with no partial, blurry, or illegible portions.
    
</dd>
</dl>

<dl>
<dd>

**rear_image:** `String` — Base64-encoded rear check image. Must be JPEG or PNG format and less than 1MB. Image must show the entire check clearly with no partial, blurry, or illegible portions.
    
</dd>
</dl>

<dl>
<dd>

**check_amount:** `Integer` — Check amount in cents (maximum 32-bit integer value).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Cloud
<details><summary><code>client.cloud.add_device(entry, request) -> Payabli::Cloud::Types::AddDeviceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Register a cloud device to an entrypoint. See [Devices Quickstart](/developers/developer-guides/devices-quickstart#devices-quickstart) for a complete guide.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cloud.add_device(
  entry: '8cfec329267',
  registrationCode: 'YS7DS5',
  description: 'Front Desk POS'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — Description or name for the device. This can be anything, but Payabli recommends entering the name of the paypoint, or some other easy to identify descriptor. If you have several devices for one paypoint, you can give them descriptions like "Cashier 1" and "Cashier 2", or "Front Desk" and "Back Office"
    
</dd>
</dl>

<dl>
<dd>

**registration_code:** `String` 

The device registration code or serial number, depending on the model.

- Ingenico devices: This is the activation code that's displayed on the device screen during setup.

- PAX A920 device: This code is the serial number on the back of the device.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cloud.history_device(device_id, entry) -> Payabli::Types::CloudQueryApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the registration history for a device. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cloud.history_device();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**device_id:** `String` — ID of the cloud device. 
    
</dd>
</dl>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cloud.list_device(entry) -> Payabli::Types::CloudQueryApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of cloud devices registered to an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cloud.list_device(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**force_refresh:** `Internal::Types::Boolean` — When `true`, the request retrieves an updated list of devices from the processor instead of returning a cached list of devices.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cloud.remove_device(device_id, entry) -> Payabli::Cloud::Types::RemoveDeviceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a cloud device from an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cloud.remove_device();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**device_id:** `String` — ID of the cloud device. 
    
</dd>
</dl>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Customer
<details><summary><code>client.customer.add_customer(entry, request) -> Payabli::Types::PayabliApiResponseCustomerQuery</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a customer in an entrypoint. An identifier is required to create customer records. Change your identifier settings in Settings > Custom Fields in PartnerHub. 
If you don't include an identifier, the record is rejected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.add_customer(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` — When `true`, the request creates a new customer record, regardless of whether customer identifiers match an existing customer.
    
</dd>
</dl>

<dl>
<dd>

**replace_existing:** `Integer` — Flag indicating to replace existing customer with a new record. Possible values: 0 (don't replace), 1 (replace). Default is `0`.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::CustomerData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer.delete_customer(customer_id) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a customer record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.delete_customer();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer.get_customer(customer_id) -> Payabli::Types::CustomerQueryRecords</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a customer's record and details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.get_customer();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer.link_customer_transaction(customer_id, trans_id) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Links a customer to a transaction by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.link_customer_transaction();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer.request_consent(customer_id) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends the consent opt-in email to the customer email address in the customer record.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.request_consent();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer.update_customer(customer_id, request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a customer record. Include only the fields you want to change.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer.update_customer({
  firstname: 'Irene',
  lastname: 'Canizales',
  address1: "145 Bishop's Trail",
  city: 'Mountain City',
  state: 'TN',
  zip: '37612',
  country: 'US'
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::CustomerData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Export
<details><summary><code>client.export.export_applications(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of boarding applications for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_applications(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `createdAt` (gt, ge, lt, le, eq, ne)
- `startDate` (gt, ge, lt, le, eq, ne)
- `dbaname`  (ct, nct)
- `legalname`  (ct, nct)
- `ein`  (ct, nct)
- `address`  (ct, nct)
- `city`  (ct, nct)
- `state`  (ct, nct)
- `phone`  (ct, nct)
- `mcc`  (ct, nct)
- `owntype`  (ct, nct)
- `ownerName`  (ct, nct)
- `contactName`  (ct, nct)
- `status`  (eq, ne)
- `orgParentname`  (ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- `limitRecord` : max number of records for query (default="20", "0" or negative value for all)
- `fromRecord` : initial record in query

Example: `dbaname(ct)=hoa` returns all records with a `dbaname` containing "hoa"
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batch_details(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batch_details(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**

  - `settlementDate` (gt, ge, lt, le, eq, ne)
  - `depositDate` (gt, ge, lt, le, eq, ne)
  - `transId`  (ne, eq, ct, nct)
  - `gatewayTransId`  (ne, eq, ct, nct)
  - `method`   (in, nin, eq, ne)
  - `settledAmount`  (gt, ge, lt, le, eq, ne)
  - `operation`    (in, nin, eq, ne)
  - `source`   (in, nin, eq, ne)
  - `batchNumber`  (ct, nct, eq, ne)
  - `payaccountLastfour`   (nct, ct)
  - `payaccountType`   (ne, eq, in, nin)
  - `customerFirstname`   (ct, nct, eq, ne)
  - `customerLastname`    (ct, nct, eq, ne)
  - `customerName`   (ct, nct)
  - `customerId`  (eq, ne)
  - `customerNumber`  (ct, nct, eq, ne)
  - `customerCompanyname`    (ct, nct, eq, ne)
  - `customerAddress` (ct, nct, eq, ne)
  - `customerCity`    (ct, nct, eq, ne)
  - `customerZip` (ct, nct, eq, ne)
  - `customerState` (ct, nct, eq, ne)
  - `customerCountry` (ct, nct, eq, ne)
  - `customerPhone` (ct, nct, eq, ne)
  - `customerEmail` (ct, nct, eq, ne)
  - `customerShippingAddress` (ct, nct, eq, ne)
  - `customerShippingCity`    (ct, nct, eq, ne)
  - `customerShippingZip` (ct, nct, eq, ne)
  - `customerShippingState` (ct, nct, eq, ne)
  - `customerShippingCountry` (ct, nct, eq, ne)
  - `orgId`  (eq) *mandatory when entry=org*
  - `isHold` (eq, ne)
  - `paypointId`  (ne, eq)
  - `paypointLegal`  (ne, eq, ct, nct)
  - `paypointDba`  (ne, eq, ct, nct)
  - `orgName`  (ne, eq, ct, nct)
  - `batchId` (ct, nct, eq, neq)
  - `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `amount(gt)=20` return all records with amount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batch_details_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batch_details_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**

  - `settlementDate` (gt, ge, lt, le, eq, ne)
  - `depositDate` (gt, ge, lt, le, eq, ne)
  - `transId`  (ne, eq, ct, nct)
  - `gatewayTransId`  (ne, eq, ct, nct)
  - `method`   (in, nin, eq, ne)
  - `settledAmount`  (gt, ge, lt, le, eq, ne)
  - `operation`    (in, nin, eq, ne)
  - `source`   (in, nin, eq, ne)
  - `batchNumber`  (ct, nct, eq, ne)
  - `payaccountLastfour`   (nct, ct)
  - `payaccountType`   (ne, eq, in, nin)
  - `customerFirstname`   (ct, nct, eq, ne)
  - `customerLastname`    (ct, nct, eq, ne)
  - `customerName`   (ct, nct)
  - `customerId`  (eq, ne)
  - `customerNumber`  (ct, nct, eq, ne)
  - `customerCompanyname`    (ct, nct, eq, ne)
  - `customerAddress` (ct, nct, eq, ne)
  - `customerCity`    (ct, nct, eq, ne)
  - `customerZip` (ct, nct, eq, ne)
  - `customerState` (ct, nct, eq, ne)
  - `customerCountry` (ct, nct, eq, ne)
  - `customerPhone` (ct, nct, eq, ne)
  - `customerEmail` (ct, nct, eq, ne)
  - `customerShippingAddress` (ct, nct, eq, ne)
  - `customerShippingCity`    (ct, nct, eq, ne)
  - `customerShippingZip` (ct, nct, eq, ne)
  - `customerShippingState` (ct, nct, eq, ne)
  - `customerShippingCountry` (ct, nct, eq, ne)
  - `orgId`  (eq) *mandatory when entry=org*
  - `isHold` (eq, ne)
  - `paypointId`  (ne, eq)
  - `paypointLegal`  (ne, eq, ct, nct)
  - `paypointDba`  (ne, eq, ct, nct)
  - `orgName`  (ne, eq, ct, nct)
  - `batchId` (ct, nct, eq, neq)
  - `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `amount(gt)=20` return all records with amount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batches(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of batches for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batches(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `connectorName` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `feeBatchAmount` (gt, ge, lt, le, eq, ne)
- `netBatchAmount` (gt, ge, lt, le, eq, ne)
- `releaseAmount` (gt, ge, lt, le, eq, ne)
- `heldAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
- `expectedDepositDate` (gt, ge, lt, le, eq, ne)
- `batchRecords` (gt, ge, lt, le, eq, ne)
- `transferId` (ne, eq)
- `transferDate` (gt, ge, lt, le, eq, ne)
- `grossAmount` (gt, ge, lt, le, eq, ne)
- `chargeBackAmount` (gt, ge, lt, le, eq, ne)
- `returnedAmount` (gt, ge, lt, le, eq, ne)
- `billingFeeAmount` (gt, ge, lt, le, eq, ne)
- `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
- `netFundedAmount` (gt, ge, lt, le, eq, ne)
- `adjustmentAmount` (gt, ge, lt, le, eq, ne)
- `processor` (ne, eq, ct, nct)
- `transferStatus` (ne, eq, in, nin)

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batches_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of batches for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batches_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `connectorName` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `feeBatchAmount` (gt, ge, lt, le, eq, ne)
- `netBatchAmount` (gt, ge, lt, le, eq, ne)
- `releaseAmount` (gt, ge, lt, le, eq, ne)
- `heldAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
- `expectedDepositDate` (gt, ge, lt, le, eq, ne)
- `batchRecords` (gt, ge, lt, le, eq, ne)
- `transferId` (ne, eq)
- `transferDate` (gt, ge, lt, le, eq, ne)
- `grossAmount` (gt, ge, lt, le, eq, ne)
- `chargeBackAmount` (gt, ge, lt, le, eq, ne)
- `returnedAmount` (gt, ge, lt, le, eq, ne)
- `billingFeeAmount` (gt, ge, lt, le, eq, ne)
- `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
- `netFundedAmount` (gt, ge, lt, le, eq, ne)
- `adjustmentAmount` (gt, ge, lt, le, eq, ne)
- `processor` (ne, eq, ct, nct)
- `transferStatus` (ne, eq, in, nin)

List of parameters accepted:
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query
Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batches_out(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of money out batches for a paypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batches_out(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
  - `batchDate` (gt, ge, lt, le, eq, ne)
  - `batchNumber` (ne, eq)
  - `batchAmount` (gt, ge, lt, le, eq, ne)
  - `status` (in, nin, eq, ne)
  - `paypointLegal` (ne, eq, ct, nct)
  - `paypointDba` (ne, eq, ct, nct)
  - `orgName` (ne, eq, ct, nct, nin, in)
  - `paypointId` (ne, eq)
  - `externalPaypointID` (ct, nct, eq, ne)
List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00"
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_batches_out_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of money out batches for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_batches_out_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
  - `batchDate` (gt, ge, lt, le, eq, ne)
  - `batchNumber` (ne, eq)
  - `batchAmount` (gt, ge, lt, le, eq, ne)
  - `status` (in, nin, eq, ne)
  - `paypointLegal` (ne, eq, ct, nct)
  - `paypointDba` (ne, eq, ct, nct)
  - `orgName` (ne, eq, ct, nct, nin, in)
  - `paypointId` (ne, eq)
  - `externalPaypointID` (ct, nct, eq, ne)
List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00"
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_bills(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of bills for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_bills(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `status` (in, nin, eq, ne)
- `billNumber` (ct, nct, eq, ne)
- `billDate` (gt, ge, lt, le, eq, ne)
- `billDueDate` (gt, ge, lt, le, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `vendorName` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `paymentMethod` (ct, nct, eq, ne)
- `paymentId` (ct, nct, eq, ne)
- `paymentgroup` (ct, nct, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20  return all records with totalAmount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_bills_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of bills for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_bills_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `status` (in, nin, eq, ne)
- `billNumber` (ct, nct, eq, ne)
- `billDate` (gt, ge, lt, le, eq, ne)
- `billDueDate` (gt, ge, lt, le, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `vendorName` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `paymentMethod` (ct, nct, eq, ne)
- `paymentId` (ct, nct, eq, ne)
- `paymentgroup` (ct, nct, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20  return all records with totalAmount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_chargebacks(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of chargebacks and ACH returns for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_chargebacks(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `chargebackDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `reasonCode` (in, nin, eq, ne)
- `reason` (ct, nct, eq, ne)
- `caseNumber` (ct, nct, eq, ne)
- `status` (in, nin, eq, ne)
- `accountType` (in, nin, eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_chargebacks_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of chargebacks and ACH returns for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_chargebacks_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `chargebackDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `reasonCode` (in, nin, eq, ne)
- `reason` (ct, nct, eq, ne)
- `caseNumber` (ct, nct, eq, ne)
- `status` (in, nin, eq, ne)
- `accountType` (in, nin, eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_customers(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of customers for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_customers(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**
- `createdDate` (gt, ge, lt, le, eq, ne)
- `customernumber` (ne, eq, ct, nct)
- `firstname` (ne, eq, ct, nct)
- `lastname` (ne, eq, ct, nct)
- `name` (ct, nct)
- `address` (ne, eq, ct, nct)
- `city` (ne, eq, ct, nct)
- `country` (ne, eq, ct, nct)
- `zip` (ne, eq, ct, nct)
- `state` (ne, eq, ct, nct)
- `shippingaddress` (ne, eq, ct, nct)
- `shippingcity` (ne, eq, ct, nct)
- `shippingcountry` (ne, eq, ct, nct)
- `shippingzip` (ne, eq, ct, nct)
- `shippingstate` (ne, eq, ct, nct)
- `phone` (ne, eq, ct, nct)
- `email` (ne, eq, ct, nct)
- `company` (ne, eq, ct, nct)
- `username` (ne, eq, ct, nct)
- `balance` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

**List of comparison accepted - enclosed between parentheses:**
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

**List of parameters accepted:**
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

**Example:**
balance(gt)=20 return all records with balance greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_customers_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Exports a list of customers for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_customers_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**
- `createdDate` (gt, ge, lt, le, eq, ne)
- `customernumber` (ne, eq, ct, nct)
- `firstname` (ne, eq, ct, nct)
- `lastname` (ne, eq, ct, nct)
- `name` (ct, nct)
- `address` (ne, eq, ct, nct)
- `city` (ne, eq, ct, nct)
- `country` (ne, eq, ct, nct)
- `zip` (ne, eq, ct, nct)
- `state` (ne, eq, ct, nct)
- `shippingaddress` (ne, eq, ct, nct)
- `shippingcity` (ne, eq, ct, nct)
- `shippingcountry` (ne, eq, ct, nct)
- `shippingzip` (ne, eq, ct, nct)
- `shippingstate` (ne, eq, ct, nct)
- `phone` (ne, eq, ct, nct)
- `email` (ne, eq, ct, nct)
- `company` (ne, eq, ct, nct)
- `username` (ne, eq, ct, nct)
- `balance` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

**List of comparison accepted - enclosed between parentheses:**
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

**List of parameters accepted:**
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

**Example:**
balance(gt)=20 return all records with balance greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_invoices(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export list of invoices for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_invoices(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
 - `invoiceDate` (gt, ge, lt, le, eq, ne)
 - `dueDate` (gt, ge, lt, le, eq, ne)
 - `sentDate` (gt, ge, lt, le, eq, ne)
 - `frequency`  (in, nin,ne, eq)
 - `invoiceType`   (eq, ne)
 - `payTerms`   (in, nin, eq, ne)
 - `paypointId`  (ne, eq)
 - `totalAmount`  (gt, ge, lt, le, eq, ne)
 - `paidAmount`  (gt, ge, lt, le, eq, ne)
 - `status`   (in, nin, eq, ne)
 - `invoiceNumber`   (ct, nct, eq, ne)
 - `purchaseOrder`   (ct, nct, eq, ne)
 - `itemProductCode` (ct, nct)
 - `itemDescription` (ct, nct)
 - `customerFirstname`   (ct, nct, eq, ne)
 - `customerLastname`    (ct, nct, eq, ne)
 - `customerName`   (ct, nct)
 - `customerId`  (eq, ne)
 - `customerNumber`  (ct, nct, eq, ne)
 - `customerCompanyname`    (ct, nct, eq, ne)
 - `customerAddress` (ct, nct, eq, ne)
 - `customerCity`    (ct, nct, eq, ne)
 - `customerZip` (ct, nct, eq, ne)
 - `customerState` (ct, nct, eq, ne)
 - `customerCountry` (ct, nct, eq, ne)
 - `customerPhone` (ct, nct, eq, ne)
 - `customerEmail` (ct, nct, eq, ne)
 - `customerShippingAddress` (ct, nct, eq, ne)
 - `customerShippingCity` (ct, nct, eq, ne)
 - `customerShippingZip` (ct, nct, eq, ne)
 - `customerShippingState` (ct, nct, eq, ne)
 - `customerShippingCountry` (ct, nct, eq, ne)
 - `orgId`  (eq) 
 - `paylinkId`  (ne, eq)
 - `paypointLegal`  (ne, eq, ct, nct)
 - `paypointDba`  (ne, eq, ct, nct)
 - `orgName`  (ne, eq, ct, nct)
 - `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
 - eq or empty => equal
 - gt => greater than
 - ge => greater or equal
 - lt => less than
 - le => less or equal
 - ne => not equal
 - ct => contains
 - nct => not contains
 - in => inside array
 - nin => not inside array
 
List of parameters accepted:
 - `limitRecord` : max number of records for query (default="20", "0" or negative value for all)
 - `fromRecord` : initial record in query
 
Example: `totalAmount(gt)=20` returns all records with `totalAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_invoices_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of invoices for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_invoices_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
 - `invoiceDate` (gt, ge, lt, le, eq, ne)
 - `dueDate` (gt, ge, lt, le, eq, ne)
 - `sentDate` (gt, ge, lt, le, eq, ne)
 - `frequency` (in, nin,ne, eq)
 - `invoiceType` (eq, ne)
 - `payTerms` (in, nin, eq, ne)
 - `paypointId` (ne, eq)
 - `totalAmount` (gt, ge, lt, le, eq, ne)
 - `paidAmount` (gt, ge, lt, le, eq, ne)
 - `status` (in, nin, eq, ne)
 - `invoiceNumber` (ct, nct, eq, ne)
 - `purchaseOrder` (ct, nct, eq, ne)
 - `itemProductCode` (ct, nct)
 - `itemDescription` (ct, nct)
 - `customerFirstname` (ct, nct, eq, ne)
 - `customerLastname` (ct, nct, eq, ne)
 - `customerName` (ct, nct)
 - `customerId` (eq, ne)
 - `customerNumber` (ct, nct, eq, ne)
 - `customerCompanyname` (ct, nct, eq, ne)
 - `customerAddress` (ct, nct, eq, ne)
 - `customerCity` (ct, nct, eq, ne)
 - `customerZip` (ct, nct, eq, ne)
 - `customerState` (ct, nct, eq, ne)
 - `customerCountry` (ct, nct, eq, ne)
 - `customerPhone` (ct, nct, eq, ne)
 - `customerEmail` (ct, nct, eq, ne)
 - `customerShippingAddress` (ct, nct, eq, ne)
 - `customerShippingCity` (ct, nct, eq, ne)
 - `customerShippingZip` (ct, nct, eq, ne)
 - `customerShippingState` (ct, nct, eq, ne)
 - `customerShippingCountry` (ct, nct, eq, ne)
 - `orgId` (eq) 
 - `paylinkId` (ne, eq)
 - `paypointLegal` (ne, eq, ct, nct)
 - `paypointDba` (ne, eq, ct, nct)
 - `orgName` (ne, eq, ct, nct)
 - `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name
 
List of comparison accepted - enclosed between parentheses:
 - eq or empty => equal
 - gt => greater than
 - ge => greater or equal
 - lt => less than
 - le => less or equal
 - ne => not equal
 - ct => contains
 - nct => not contains
 - in => inside array
 - nin => not inside array
 
List of parameters accepted:
 - limitRecord : max number of records for query (default="20", "0" or negative value for all)
 - fromRecord : initial record in query
 
Example: totalAmount(gt)=20  return all records with totalAmount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_organizations(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of child organizations (suborganizations) for a parent organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_organizations(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `name` (ct, nct, eq, ne)
- `type` (ne, eq)
- `contactName` (ct, nct, eq, ne)
- `contactTitle` (ct, nct, eq, ne)
- `contactEmail` (ct, nct, eq, ne)
- `contactPhone` (ct, nct, eq, ne)
- `city` (ct, nct, eq, ne)
- `state` (in, nin, eq, ne)
- `address` (ct, nct, eq, ne)
- `country` (ct, nct, eq, ne)
- `zip` (ct, nct, eq, ne)
- `hasBilling` any value greater than zero is taken as TRUE otherwise is FALSE
- `hasResidual` any value greater than zero is taken as TRUE otherwise is FALSE

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: name(ct)=hoa  return all records where name contains "hoa"
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_payout(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of payouts and their statuses for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_payout(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `status` (in, nin, eq, ne)
- `transactionDate` (gt, ge, lt, le, eq, ne)
- `billNumber` (ct, nct)
- `vendorNumber` (ct, nct, eq, ne)
- `vendorName` (ct, nct, eq, ne)
- `paymentMethod` (ct, nct, eq, ne)
- `paymentId` (ct, nct, eq, ne)
- `paymentgroup` (ct, nct, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: totalAmount(gt)=20 return all records with totalAmount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_payout_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of payouts and their details for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_payout_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `status` (in, nin, eq, ne)
- `transactionDate` (gt, ge, lt, le, eq, ne)
- `billNumber` (ct, nct)
- `vendorNumber` (ct, nct, eq, ne)
- `vendorName` (ct, nct, eq, ne)
- `paymentMethod` (ct, nct, eq, ne)
- `paymentId` (ct, nct, eq, ne)
- `paymentgroup` (ct, nct, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: totalAmount(gt)=20 return all records with totalAmount greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_paypoints(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of paypoints in an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_paypoints(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `createdAt` (gt, ge, lt, le, eq, ne)
- `startDate` (gt, ge, lt, le, eq, ne)
- `dbaname` (ct, nct)
- `legalname` (ct, nct)
- `ein` (ct, nct)
- `address` (ct, nct)
- `city` (ct, nct)
- `state` (ct, nct)
- `phone` (ct, nct)
- `mcc` (ct, nct)
- `owntype` (ct, nct)
- `ownerName` (ct, nct)
- `contactName` (ct, nct)
- `orgParentname` (ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `dbaname(ct)=hoa` returns all records with `dbaname` containing "hoa"
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_settlements(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of settled transactions for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_settlements(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `settlementDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `gatewayTransId` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `settledAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne)
- `batchNumber` (ct, nct, eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_settlements_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of settled transactions for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_settlements_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `settlementDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `gatewayTransId` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `settledAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne)
- `batchNumber` (ct, nct, eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord: max number of records for query (default="20", "0" or negative value for all)
- fromRecord: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_subscriptions(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of subscriptions for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_subscriptions(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `startDate` (gt, ge, lt, le, eq, ne)
- `endDate` (gt, ge, lt, le, eq, ne)
- `nextDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin, ne, eq)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `untilcancelled` (eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) 
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_subscriptions_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of subscriptions for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_subscriptions_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `startDate` (gt, ge, lt, le, eq, ne)
- `endDate` (gt, ge, lt, le, eq, ne)
- `nextDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin, ne, eq)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `untilcancelled` (eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq) 
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_transactions(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of transactions for an entrypoint in a file in XLXS or CSV format. Use filters to limit results. If you don't specify a date range in the request, the last two months of data are returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_transactions(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `transactionDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `gatewayTransId` (ne, eq, ct, nct)
- `orderId` (ne, eq)
- `idTrans` (ne, eq)
- `orgId` (ne, eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne)
- `status` (in, nin, eq, ne)
- `settlementStatus` (in, nin, eq, ne)
- `batchNumber` (nct, ct)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_transactions_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of transactions for an org in a file in XLSX or CSV format. Use filters to limit results. If you don't specify a date range in the request, the last two months of data are returned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_transactions_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
- `transactionDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct)
- `gatewayTransId` (ne, eq, ct, nct)
- `orderId` (ne, eq)
- `idTrans` (ne, eq)
- `orgId` (ne, eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne)
- `status` (in, nin, eq, ne)
- `settlementStatus` (in, nin, eq, ne)
- `batchNumber` (nct, ct)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_transfer_details(entry, format, transfer_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of transfer details for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_transfer_details(
  entry: '8cfec329267',
  format: ,
  transferId: 1000000,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**transfer_id:** `Integer` — Transfer identifier.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:

  - `grossAmount` (gt, ge, lt, le, eq, ne)

  - `chargeBackAmount` (gt, ge, lt, le, eq, ne)

  - `returnedAmount` (gt, ge, lt, le, eq, ne)

  - `billingFeeAmount` (gt, ge, lt, le, eq, ne)

  - `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)

  - `netFundedAmount` (gt, ge, lt, le, eq, ne)

  - `adjustmentAmount` (gt, ge, lt, le, eq, ne)

  - `transactionId` (eq, ne, in, nin)

  - `category` (eq, ne, ct, nct)

  - `type` (eq, ne, in, nin)

  - `method` (eq, ne, in, nin)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_transfers(entry) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of transfers for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_transfers(
  entry: '8cfec329267',
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help. 

List of field names accepted:
  - `transferDate` (gt, ge, lt, le, eq, ne)

  - `grossAmount` (gt, ge, lt, le, eq, ne)

  - `chargeBackAmount` (gt, ge, lt, le, eq, ne)

  - `returnedAmount` (gt, ge, lt, le, eq, ne)

  - `billingFeeAmount` (gt, ge, lt, le, eq, ne)

  - `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)

  - `netFundedAmount` (gt, ge, lt, le, eq, ne)

  - `adjustmentAmount` (gt, ge, lt, le, eq, ne)

  - `processor` (ne, eq, ct, nct)

  - `transferStatus` (ne, eq, in, nin)

  - `batchNumber` (ne, eq, ct, nct)

  - `batchId` (ne, eq, in, nin)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_vendors(entry, format) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of vendors for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_vendors(
  entry: '8cfec329267',
  format: ,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `method` (in, nin, eq, ne)
- `enrollmentStatus` (in, nin, eq, ne)
- `status` (in, nin, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `name` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `phone` (ct, nct, eq, ne)
- `email` (ct, nct, eq, ne)
- `address` (ct, nct, eq, ne)
- `city` (ct, nct, eq, ne)
- `state` (ct, nct, eq, ne)
- `country` (ct, nct, eq, ne)
- `zip` (ct, nct, eq, ne)
- `mcc` (ct, nct, eq, ne)
- `locationCode` (ct, nct, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.export.export_vendors_org(format, org_id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a list of vendors for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.export.export_vendors_org(
  format: ,
  orgId: 123,
  columnsExport: 'BatchDate:Batch_Date,PaypointName:Legal_name',
  fromRecord: 251,
  limitRecord: 1000
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**format:** `Payabli::Export::Types::ExportFormat1` — Format for the export, either XLSX or CSV. 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**columns_export:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — The number of records to return for the query. The maximum is 30,000 records. When this parameter isn't sent, the API returns up to 25,000 records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `method` (in, nin, eq, ne)
- `enrollmentStatus` (in, nin, eq, ne)
- `status` (in, nin, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `name` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `phone` (ct, nct, eq, ne)
- `email` (ct, nct, eq, ne)
- `address` (ct, nct, eq, ne)
- `city` (ct, nct, eq, ne)
- `state` (ct, nct, eq, ne)
- `country` (ct, nct, eq, ne)
- `zip` (ct, nct, eq, ne)
- `mcc` (ct, nct, eq, ne)
- `locationCode` (ct, nct, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HostedPaymentPages
<details><summary><code>client.hosted_payment_pages.load_page(entry, subdomain) -> Payabli::Types::PayabliPages</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Loads all of a payment page's details including `pageIdentifier` and `validationCode`. This endpoint requires an `application` API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.hosted_payment_pages.load_page();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**subdomain:** `String` — Payment page identifier. The subdomain value is the last part of the payment page URL. For example, in`https://paypages-sandbox.payabli.com/513823dc10/pay-your-fees-1`, the subdomain is `pay-your-fees-1`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hosted_payment_pages.new_page(entry, request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>


Creates a new payment page for a paypoint. 
Note: this operation doesn't create a new paypoint, just a payment page for an existing paypoint. Paypoints are created by the Payabli team when a boarding application is approved.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.hosted_payment_pages.new_page(
  entry: '8cfec329267',
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::PayabliPages` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.hosted_payment_pages.save_page(entry, subdomain, request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a payment page in a paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.hosted_payment_pages.save_page({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**subdomain:** `String` — Payment page identifier. The subdomain value is the last part of the payment page URL. For example, in`https://paypages-sandbox.payabli.com/513823dc10/pay-your-fees-1`, the subdomain is `pay-your-fees-1`.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::PayabliPages` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Import
<details><summary><code>client.import.import_bills(entry, request) -> Payabli::Types::PayabliApiResponseImport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import a list of bills from a CSV file. See the [Import Guide](/developers/developer-guides/bills-add#import-bills) for more help and an example file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import.import_bills(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import.import_customer(entry, request) -> Payabli::Types::PayabliApiResponseImport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import a list of customers from a CSV file. See the [Import Guide](/developers/developer-guides/entities-customers#import-customers) for more help and example files.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import.import_customer(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**replace_existing:** `Integer` — Flag indicating to replace existing customer with a new record. Possible values: 0 (do not replace), 1 (replace). Default is 0
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import.import_vendor(entry, request) -> Payabli::Types::PayabliApiResponseImport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Import a list of vendors from a CSV file. See the [Import Guide](/developers/developer-guides/entities-vendors#import-vendors) for more help and example files.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import.import_vendor(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Invoice
<details><summary><code>client.invoice.add_invoice(entry, request) -> Payabli::Invoice::Types::InvoiceResponseWithoutData</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an invoice in an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.add_invoice(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Invoice::Types::InvoiceDataRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.delete_attached_from_invoice(filename, id_invoice) -> Payabli::Invoice::Types::InvoiceResponseWithoutData</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an invoice that's attached to a file.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.delete_attached_from_invoice();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filename:** `String` 

The filename in Payabli. Filename is `zipName` in response to a request to `/api/Invoice/{idInvoice}`. Here, the filename is `0_Bill.pdf``. 
"DocumentsRef": {
  "zipfile": "inva_269.zip",
  "filelist": [
    {
      "originalName": "Bill.pdf",
      "zipName": "0_Bill.pdf",
      "descriptor": null
    }
  ]
}
    
</dd>
</dl>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.delete_invoice(id_invoice) -> Payabli::Invoice::Types::InvoiceResponseWithoutData</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a single invoice from an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.delete_invoice();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.edit_invoice(id_invoice, request) -> Payabli::Invoice::Types::InvoiceResponseWithoutData</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates details for a single invoice in an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.edit_invoice(idInvoice: 332);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` — When `true`, the request creates a new customer record, regardless of whether customer identifiers match an existing customer.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Invoice::Types::InvoiceDataRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.get_attached_file_from_invoice(filename, id_invoice) -> Payabli::Types::FileContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a file attached to an invoice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.get_attached_file_from_invoice(
  filename: 'filename',
  idInvoice: 1
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filename:** `String` 

The filename in Payabli. Filename is `zipName` in the response to a request to `/api/Invoice/{idInvoice}`. Here, the filename is `0_Bill.pdf``. 
```
  "DocumentsRef": {
    "zipfile": "inva_269.zip",
    "filelist": [
      {
        "originalName": "Bill.pdf",
        "zipName": "0_Bill.pdf",
        "descriptor": null
      }
    ]
  }
  ```
    
</dd>
</dl>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>

<dl>
<dd>

**return_object:** `Internal::Types::Boolean` — When `true`, the request returns the file content as a Base64-encoded string.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.get_invoice(id_invoice) -> Payabli::Invoice::Types::GetInvoiceRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single invoice by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.get_invoice();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.get_invoice_number(entry) -> Payabli::Invoice::Types::InvoiceNumberResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the next available invoice number for a paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.get_invoice_number();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.list_invoices(entry) -> Payabli::Invoice::Types::QueryInvoiceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of invoices for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.list_invoices(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:

- `invoiceDate` (gt, ge, lt, le, eq, ne)
- `dueDate` (gt, ge, lt, le, eq, ne)
- `sentDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin,ne, eq)
- `invoiceType` (eq, ne)
- `payTerms` (in, nin, eq, ne)
- `paypointId` (ne, eq)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paidAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `invoiceNumber` (ct, nct, eq, ne)
- `purchaseOrder` (ct, nct, eq, ne)
- `itemProductCode` (ct, nct)
- `itemDescription` (ct, nct)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq)
- `paylinkId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:
  
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20 return all records with totalAmount greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.list_invoices_org(org_id) -> Payabli::Invoice::Types::QueryInvoiceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of invoices for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.list_invoices_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:

- `invoiceDate` (gt, ge, lt, le, eq, ne)
- `dueDate` (gt, ge, lt, le, eq, ne)
- `sentDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin,ne, eq)
- `invoiceType` (eq, ne)
- `payTerms` (in, nin, eq, ne)
- `paypointId` (ne, eq)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `paidAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `invoiceNumber` (ct, nct, eq, ne)
- `purchaseOrder` (ct, nct, eq, ne)
- `itemProductCode` (ct, nct)
- `itemDescription` (ct, nct)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq)
- `paylinkId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name

List of comparison accepted - enclosed between parentheses:

- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20 return all records with totalAmount greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.send_invoice(id_invoice) -> Payabli::Invoice::Types::SendInvoiceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends an invoice from an entrypoint via email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.send_invoice(
  idInvoice: 23548884,
  attachfile: true,
  mail2: 'tamara@example.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>

<dl>
<dd>

**attachfile:** `Internal::Types::Boolean` — When `true`, attaches a PDF version of invoice to the email.
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — Email address where the invoice will be sent to. If this parameter isn't included, Payabli uses the email address on file for the customer owner of the invoice.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.invoice.get_invoice_pdf(id_invoice) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Export a single invoice in PDF format.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.invoice.get_invoice_pdf();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## LineItem
<details><summary><code>client.line_item.add_item(entry, request) -> Payabli::Types::PayabliApiResponse6</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds products and services to an entrypoint's catalog. These are used as line items for invoicing and transactions. In the response, "responseData" displays the item's code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.line_item.add_item(entry: '47cae3d74');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — A unique ID you can include to prevent duplicating objects or transactions if a request is sent more than once. This key isn't generated in Payabli, you must generate it yourself. 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::LineItem` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.line_item.delete_item(line_item_id) -> Payabli::LineItem::Types::DeleteItemResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes an item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.line_item.delete_item();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**line_item_id:** `Integer` — ID for the line item (also known as a product, service, or item).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.line_item.get_item(line_item_id) -> Payabli::Types::LineItemQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets an item by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.line_item.get_item();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**line_item_id:** `Integer` — ID for the line item (also known as a product, service, or item).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.line_item.list_line_items(entry) -> Payabli::Types::QueryResponseItems</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of line items and their details from an entrypoint. Line items are also known as items, products, and services. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.line_item.list_line_items(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20

</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:

  - `categories` (ct, nct)
  - `code` (ne, eq, ct, nct)
  - `commodityCode` (ne, eq, ct, nct)
  - `createdDate` (gt, ge, lt, le, eq, ne)
  - `description` (ne, eq, ct, nct)
  - `externalPaypointID` (ct, nct, ne, eq)
  - `mode` (eq, ne)
  - `name` (ne, eq, ct, nct)
  - `orgName` (ne, eq, ct, nct)
  - `paypointDba` (ne, eq, ct, nct)
  - `paypointId` (ne, eq)
  - `paypointLegal` (ne, eq, ct, nct)
  - `quantity` (gt, ge, lt, le, eq, ne)
  - `uom` (ne, eq, ct, nct)
  - `updatedDate` (gt, ge, lt, le, eq, ne)
  - `value` (gt, ge, lt, le, eq, ne)

List of comparison accepted - enclosed between parentheses:

- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: name(ct)=john return all records with name containing john
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.line_item.update_item(line_item_id, request) -> Payabli::Types::PayabliApiResponse6</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.line_item.update_item({
  itemCost: 12.45,
  itemQty: 1
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**line_item_id:** `Integer` — ID for the line item (also known as a product, service, or item).
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::LineItem` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MoneyIn
<details><summary><code>client.money_in.authorize(request) -> Payabli::MoneyIn::Types::AuthResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Authorize a card transaction. This returns an authorization code and reserves funds for the merchant. Authorized transactions aren't flagged for settlement until [captured](/api-reference/moneyin/capture-an-authorized-transaction).

**Note**: Only card transactions can be authorized. This endpoint can't be used for ACH transactions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.authorize();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::MoneyIn::Types::TransRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.capture(amount, trans_id) -> Payabli::MoneyIn::Types::CaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

<Warning>
  This endpoint is deprecated and will be sunset on November 24, 2025. Migrate to [POST `/capture/{transId}`](/api-reference/moneyin/capture-an-authorized-transaction)`.
</Warning>
  
  Capture an [authorized
transaction](/api-reference/moneyin/authorize-a-transaction) to complete the transaction and move funds from the customer to merchant account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.capture();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` — Amount to be captured. The amount can't be greater the original total amount of the transaction. `0` captures the total amount authorized in the transaction. Partial captures aren't supported.
    
</dd>
</dl>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.capture_auth(trans_id, request) -> Payabli::MoneyIn::Types::CaptureResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Capture an [authorized transaction](/api-reference/moneyin/authorize-a-transaction) to complete the transaction and move funds from the customer to merchant account. 

You can use this endpoint to capture both full and partial amounts of the original authorized transaction. See [Capture an authorized transaction](/developers/developer-guides/pay-in-auth-and-capture) for more information about this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.capture_auth({
  paymentDetails: {
    totalAmount: 105,
    serviceFee: 5
  }
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::MoneyIn::Types::CaptureRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.credit(request) -> Payabli::Types::PayabliApiResponse0</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Make a temporary microdeposit in a customer account to verify the customer's ownership and access to the target account. Reverse the microdeposit with `reverseCredit`.

This feature must be enabled by Payabli on a per-merchant basis. Contact support for help. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.credit(
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA',
  customerData: {
    billingAddress1: '5127 Linkwood ave',
    customerNumber: '100'
  },
  entrypoint: 'my-entrypoint',
  paymentDetails: {
    serviceFee: 0,
    totalAmount: 1
  },
  paymentMethod: {
    achAccount: '88354454',
    achHolder: 'John Smith',
    achRouting: '021000021',
    method: 'ach'
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**customer_data:** `Payabli::Types::PayorDataRequest` — Object describing the customer/payor.
    
</dd>
</dl>

<dl>
<dd>

**entrypoint:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_description:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**payment_details:** `Payabli::Types::PaymentDetailCredit` 
    
</dd>
</dl>

<dl>
<dd>

**payment_method:** `Payabli::MoneyIn::Types::RequestCreditPaymentMethod` — Object describing the ACH payment method to use for transaction.
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**subdomain:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.details(trans_id) -> Payabli::Types::TransactionQueryRecordsCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a processed transaction's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.details();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.getpaid(request) -> Payabli::MoneyIn::Types::PayabliApiResponseGetPaid</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Make a single transaction. This method authorizes and captures a payment in one step.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.getpaid();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ach_validation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**include_details:** `Internal::Types::Boolean` — When `true`, transactionDetails object is returned in the response. See a full example of the `transactionDetails` object in the [Transaction integration guide](/developers/developer-guides/money-in-transaction-add#includedetailstrue-response).
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**validation_code:** `String` — Value obtained from user when an API generated CAPTCHA is used in payment page
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::MoneyIn::Types::TransRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.reverse(amount, trans_id) -> Payabli::MoneyIn::Types::ReverseResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A reversal either refunds or voids a transaction independent of the transaction's settlement status. Send a reversal request for a transaction, and Payabli automatically determines whether it's a refund or void. You don't need to know whether the transaction is settled or not.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.reverse();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` 


Amount to reverse from original transaction, minus any service fees charged on the original transaction.

The amount provided can't be greater than the original total amount of the transaction, minus service fees. For example, if a transaction was $90 plus a $10 service fee, you can reverse up to $90. 

An amount equal to zero will refunds the total amount authorized minus any service fee.
    
</dd>
</dl>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.refund(amount, trans_id) -> Payabli::MoneyIn::Types::RefundResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Refund a transaction that has settled and send money back to the account holder. If a transaction hasn't been settled, void it instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.refund();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**amount:** `Integer` 


Amount to refund from original transaction, minus any service fees charged on the original transaction. 

The amount provided can't be greater than the original total amount of the transaction, minus service fees. For example, if a transaction was \$90 plus a \$10 service fee, you can refund up to \$90.

An amount equal to zero will refund the total amount authorized minus any service fee.
    
</dd>
</dl>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.refund_with_instructions(trans_id, request) -> Payabli::MoneyIn::Types::RefundWithInstructionsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Refunds a settled transaction with split instructions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.refund_with_instructions(
  transId: '10-3ffa27df-b171-44e0-b251-e95fbfc7a723',
  idempotencyKey: '8A29FC40-CA47-1067-B31D-00DD010662DB',
  source: 'api',
  orderDescription: 'Materials deposit',
  amount: 100,
  refundDetails: {
    splitRefunding: [{
      originationEntryPoint: '7f1a381696',
      accountId: '187-342',
      description: 'Refunding undelivered materials',
      amount: 60
    }, {
      originationEntryPoint: '7f1a381696',
      accountId: '187-343',
      description: 'Refunding deposit for undelivered materials',
      amount: 40
    }]
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Integer` 


Amount to refund from original transaction, minus any service fees charged on the original transaction. 

The amount provided can't be greater than the original total amount of the transaction, minus service fees. For example, if a transaction was $90 plus a $10 service fee, you can refund up to $90. 

An amount equal to zero will refund the total amount authorized minus any service fee.
    
</dd>
</dl>

<dl>
<dd>

**ipaddress:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_description:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**refund_details:** `Payabli::Types::RefundDetail` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.reverse_credit(trans_id) -> Payabli::Types::PayabliApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reverse microdeposits that are used to verify customer account ownership and access. The `transId` value is returned in the success response for the original credit transaction made with `api/MoneyIn/makecredit`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.reverse_credit();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.send_receipt_2_trans(trans_id) -> Payabli::MoneyIn::Types::ReceiptResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a payment receipt for a transaction.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.send_receipt_2_trans(
  transId: '45-as456777hhhhhhhhhh77777777-324',
  email: 'example@email.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` 

Email address where the payment receipt should be sent. 

If not provided, the email address on file for the user owner of the transaction is used.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.validate(request) -> Payabli::MoneyIn::Types::ValidateResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Validates a card number without running a transaction or authorizing a charge.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.validate(
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA',
  entryPoint: 'entry132',
  paymentMethod: {
    cardnumber: '4360000001000005',
    cardexp: '12/29',
    cardzip: '14602-8328',
    cardHolder: 'Dianne Becker-Smith'
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**entry_point:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_description:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**payment_method:** `Payabli::MoneyIn::Types::RequestPaymentValidatePaymentMethod` — Object describing payment method to use for transaction.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_in.void(trans_id) -> Payabli::MoneyIn::Types::VoidResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a transaction that hasn't been settled yet. Voiding non-captured authorizations prevents future captures. If a transaction has been settled, refund it instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_in.void();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MoneyOut
<details><summary><code>client.money_out.authorize_out(request) -> Payabli::MoneyOutTypes::Types::AuthCapturePayoutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Authorizes transaction for payout. Authorized transactions aren't flagged for settlement until captured. Use `referenceId` returned in the response to capture the transaction. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.authorize_out();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**allow_duplicated_bills:** `Internal::Types::Boolean` — When `true`, the authorization bypasses the requirement for unique bills, identified by vendor invoice number. This allows you to make more than one payout authorization for a bill, like a split payment.
    
</dd>
</dl>

<dl>
<dd>

**do_not_create_bills:** `Internal::Types::Boolean` — When `true`, Payabli won't automatically create a bill for this payout transaction.
    
</dd>
</dl>

<dl>
<dd>

**force_vendor_creation:** `Internal::Types::Boolean` — When `true`, the request creates a new vendor record, regardless of whether the vendor already exists.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::MoneyOutTypes::Types::AuthorizePayoutBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.cancel_all_out(request) -> Payabli::MoneyOutTypes::Types::CaptureAllOutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancels an array of payout transactions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.cancel_all_out();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Internal::Types::Array[String]` — Array of identifiers of payout transactions to cancel.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.cancel_out_get(reference_id) -> Payabli::Types::PayabliApiResponse0000</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a payout transaction by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.cancel_out_get();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**reference_id:** `String` — The ID for the payout transaction. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.cancel_out_delete(reference_id) -> Payabli::Types::PayabliApiResponse0000</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a payout transaction by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.cancel_out_delete();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**reference_id:** `String` — The ID for the payout transaction. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.capture_all_out(request) -> Payabli::MoneyOutTypes::Types::CaptureAllOutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Captures an array of authorized payout transactions for settlement. The maximum number of transactions that can be captured in a single request is 500.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.capture_all_out();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Array[String]` — Array of identifiers of payout transactions to capture.  
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.capture_out(reference_id) -> Payabli::MoneyOutTypes::Types::AuthCapturePayoutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Captures a single authorized payout transaction by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.capture_out(referenceId: '129-219');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**reference_id:** `String` — The ID for the payout transaction. 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.payout_details(trans_id) -> Payabli::Types::BillDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns details for a processed money out transaction.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.payout_details();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — ReferenceId for the transaction (PaymentId).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.v_card_get(card_token) -> Payabli::MoneyOutTypes::Types::VCardGetResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves vCard details for a single card in an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.v_card_get();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**card_token:** `String` — ID for a virtual card.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.send_v_card_link(request) -> Payabli::MoneyOutTypes::Types::OperationResult</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends a virtual card link via email to the vendor associated with the `transId`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.send_v_card_link(transId: '01K33Z6YQZ6GD5QVKZ856MJBSC');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**trans_id:** `String` — The transaction ID of the virtual card payout. The ID is returned as `ReferenceId` in the response when you authorize a payout with POST /MoneyOut/authorize.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.money_out.get_check_image(asset_name) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the image of a check associated with a processed transaction. 
The check image is returned in the response body as a base64-encoded string. 
The check image is only available for payouts that have been processed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.money_out.get_check_image();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**asset_name:** `String` 

Name of the check asset to retrieve. This is returned as `filename` in the `CheckData` object 
in the response when you make a GET request to `/MoneyOut/details/{transId}`.
```
    "CheckData": {
      "ftype": "PDF",
      "filename": "check133832686289732320_01JKBNZ5P32JPTZY8XXXX000000.pdf",
      "furl": "",
      "fContent": ""
  }
```
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notification
<details><summary><code>client.notification.add_notification(request) -> Payabli::Types::PayabliApiResponseNotifications</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new notification or autogenerated report. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notification.add_notification();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Payabli::Notification::Types::AddNotificationRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notification.delete_notification(n_id) -> Payabli::Types::PayabliApiResponseNotifications</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a single notification or autogenerated report.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notification.delete_notification();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**n_id:** `String` — Notification ID. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notification.get_notification(n_id) -> Payabli::Types::NotificationQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single notification or autogenerated report's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notification.get_notification();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**n_id:** `String` — Notification ID. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notification.update_notification(n_id, request) -> Payabli::Types::PayabliApiResponseNotifications</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a notification or autogenerated report. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notification.update_notification();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**n_id:** `String` — Notification ID. 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Notification::Types::UpdateNotificationRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notification.get_report_file(id) -> Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets a copy of a generated report by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notification.get_report_file();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — Report ID
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Notificationlogs
<details><summary><code>client.notificationlogs.search_notification_logs(request) -> Internal::Types::Array[Payabli::Notificationlogs::Types::NotificationLog]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search notification logs with filtering and pagination.
  - Start date and end date cannot be more than 30 days apart
  - Either `orgId` or `paypointId` must be provided

This endpoint requires the `notifications_create` OR `notifications_read` permission.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notificationlogs.search_notification_logs(pageSize: 20);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_size:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — The page number to retrieve. Defaults to 1 if not provided.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Notificationlogs::Types::NotificationLogSearchRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notificationlogs.get_notification_log(uuid) -> Payabli::Notificationlogs::Types::NotificationLogDetail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed information for a specific notification log entry.
This endpoint requires the `notifications_create` OR `notifications_read` permission.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notificationlogs.get_notification_log();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**uuid:** `String` — The notification log entry.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notificationlogs.retry_notification_log(uuid) -> Payabli::Notificationlogs::Types::NotificationLogDetail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retry sending a specific notification.

**Permissions:** notifications_create
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notificationlogs.retry_notification_log();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**uuid:** `String` — Unique id
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.notificationlogs.bulk_retry_notification_logs(request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retry sending multiple notifications (maximum 50 IDs).
This is an async process, so use the search endpoint again to check the notification status.

This endpoint requires the `notifications_create` permission.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.notificationlogs.bulk_retry_notification_logs();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Internal::Types::Array[String]` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Ocr
<details><summary><code>client.ocr.ocr_document_form(type_result, request) -> Payabli::Ocr::Types::PayabliApiResponseOcr</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ocr.ocr_document_form({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type_result:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Ocr::Types::FileContentImageOnly` — The image file to OCR. Accepted formats include PDF, JPG, JPEG, PNG, GIF.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ocr.ocr_document_json(type_result, request) -> Payabli::Ocr::Types::PayabliApiResponseOcr</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ocr.ocr_document_json({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**type_result:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Ocr::Types::FileContentImageOnly` — Base64-encoded file content for OCR processing
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Organization
<details><summary><code>client.organization.add_organization(request) -> Payabli::Organization::Types::AddOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates an organization under a parent organization. This is also referred to as a suborganization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.add_organization(
  idempotencyKey: '6B29FC40-CA47-1067-B31D-00DD010662DA',
  billingInfo: {
    achAccount: '123123123',
    achRouting: '123123123',
    billingAddress: '123 Walnut Street',
    billingCity: 'Johnson City',
    billingCountry: 'US',
    billingState: 'TN',
    billingZip: '37615'
  },
  contacts: [{
    contactEmail: 'herman@hermanscoatings.com',
    contactName: 'Herman Martinez',
    contactPhone: '3055550000',
    contactTitle: 'Owner'
  }],
  hasBilling: true,
  hasResidual: true,
  orgAddress: '123 Walnut Street',
  orgCity: 'Johnson City',
  orgCountry: 'US',
  orgEntryName: 'pilgrim-planner',
  orgId: '123',
  orgLogo: {
    fContent: 'TXkgdGVzdCBmaWxlHJ==...',
    filename: 'my-doc.pdf',
    furl: 'https://mysite.com/my-doc.pdf'
  },
  orgName: 'Pilgrim Planner',
  orgParentId: 236,
  orgState: 'TN',
  orgTimezone: -5,
  orgType: 0,
  orgWebsite: 'www.pilgrimageplanner.com',
  orgZip: '37615',
  replyToEmail: 'email@example.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**services:** `Internal::Types::Array[Payabli::Types::ServiceCost]` 
    
</dd>
</dl>

<dl>
<dd>

**billing_info:** `Payabli::Types::Instrument` 
    
</dd>
</dl>

<dl>
<dd>

**contacts:** `Internal::Types::Array[Payabli::Types::Contacts]` 
    
</dd>
</dl>

<dl>
<dd>

**has_billing:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**has_residual:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**org_address:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_city:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_country:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_entry_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_logo:** `Payabli::Types::FileContent` 
    
</dd>
</dl>

<dl>
<dd>

**org_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_parent_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_state:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_timezone:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_type:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_website:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_zip:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**reply_to_email:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.delete_organization(org_id) -> Payabli::Organization::Types::DeleteOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an organization by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.delete_organization();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.edit_organization(org_id, request) -> Payabli::Organization::Types::EditOrganizationResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an organization's details by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.edit_organization(
  orgId: 123,
  contacts: [{
    contactEmail: 'herman@hermanscoatings.com',
    contactName: 'Herman Martinez',
    contactPhone: '3055550000',
    contactTitle: 'Owner'
  }],
  orgAddress: '123 Walnut Street',
  orgCity: 'Johnson City',
  orgCountry: 'US',
  orgEntryName: 'pilgrim-planner',
  organizationDataOrgId: '123',
  orgName: 'Pilgrim Planner',
  orgState: 'TN',
  orgTimezone: -5,
  orgType: 0,
  orgWebsite: 'www.pilgrimageplanner.com',
  orgZip: '37615'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**services:** `Internal::Types::Array[Payabli::Types::ServiceCost]` 
    
</dd>
</dl>

<dl>
<dd>

**billing_info:** `Payabli::Types::Instrument` 
    
</dd>
</dl>

<dl>
<dd>

**contacts:** `Internal::Types::Array[Payabli::Types::Contacts]` 
    
</dd>
</dl>

<dl>
<dd>

**has_billing:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**has_residual:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**org_address:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_city:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_country:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_entry_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**organization_data_org_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_logo:** `Payabli::Types::FileContent` 
    
</dd>
</dl>

<dl>
<dd>

**org_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_parent_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_state:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_timezone:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_type:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**org_website:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**org_zip:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**reply_to_email:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.get_basic_organization(entry) -> Payabli::Types::OrganizationQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets an organization's basic information by entry name (entrypoint identifier).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.get_basic_organization();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.get_basic_organization_by_id(org_id) -> Payabli::Types::OrganizationQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets an organizations basic details by org ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.get_basic_organization_by_id();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.get_organization(org_id) -> Payabli::Types::OrganizationQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves details for an organization by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.get_organization();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organization.get_settings_organization(org_id) -> Payabli::Types::SettingsQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an organization's settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organization.get_settings_organization();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PaymentLink
<details><summary><code>client.payment_link.add_pay_link_from_invoice(id_invoice, request) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates a payment link for an invoice from the invoice ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.add_pay_link_from_invoice(
  idInvoice: 23548884,
  mail2: 'jo@example.com; ceo@example.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_invoice:** `Integer` — Invoice ID
    
</dd>
</dl>

<dl>
<dd>

**amount_fixed:** `Internal::Types::Boolean` — Indicates whether customer can modify the payment amount. A value of `true` means the amount isn't modifiable, a value `false` means the payor can modify the amount to pay.
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — List of recipient email addresses. When there is more than one, separate them by a semicolon (;).
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::PaymentLink::Types::PaymentPageRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.add_pay_link_from_bill(bill_id, request) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates a payment link for a bill from the bill ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.add_pay_link_from_bill(
  billId: 23548884,
  mail2: 'jo@example.com; ceo@example.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**bill_id:** `Integer` — The Payabli ID for the bill.
    
</dd>
</dl>

<dl>
<dd>

**amount_fixed:** `Internal::Types::Boolean` — Indicates whether customer can modify the payment amount. A value of `true` means the amount isn't modifiable, a value `false` means the payor can modify the amount to pay.
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — List of recipient email addresses. When there is more than one, separate them by a semicolon (;).
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::PaymentLink::Types::PaymentPageRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.delete_pay_link_from_id(pay_link_id) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a payment link by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.delete_pay_link_from_id();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pay_link_id:** `String` — ID for the payment link.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.get_pay_link_from_id(paylink_id) -> Payabli::PaymentLink::Types::GetPayLinkFromIdResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a payment link by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.get_pay_link_from_id();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**paylink_id:** `String` — ID for payment link
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.push_pay_link_from_id(pay_link_id, request) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a payment link to the specified email addresses or phone numbers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.push_pay_link_from_id();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pay_link_id:** `String` — ID for the payment link.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::PushPayLinkRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.refresh_pay_link_from_id(pay_link_id) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Refresh a payment link's content after an update.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.refresh_pay_link_from_id(payLinkId: 'payLinkId');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pay_link_id:** `String` — ID for the payment link.
    
</dd>
</dl>

<dl>
<dd>

**amount_fixed:** `Internal::Types::Boolean` — Indicates whether customer can modify the payment amount. A value of `true` means the amount isn't modifiable, a value `false` means the payor can modify the amount to pay.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.send_pay_link_from_id(pay_link_id) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Sends a payment link to the specified email addresses. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.send_pay_link_from_id(
  payLinkId: 'payLinkId',
  mail2: 'jo@example.com; ceo@example.com'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pay_link_id:** `String` — ID for the payment link.
    
</dd>
</dl>

<dl>
<dd>

**attachfile:** `Internal::Types::Boolean` — When `true`, attaches a PDF version of invoice to the email.
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — List of recipient email addresses. When there is more than one, separate them by a semicolon (;).
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.update_pay_link_from_id(pay_link_id, request) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a payment link's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.update_pay_link_from_id(
  payLinkId: '332-c277b704-1301',
  notes: {
    enabled: true,
    header: 'Additional Notes',
    order: 0,
    placeholder: 'Enter any additional notes here',
    value: ''
  },
  paymentButton: {
    enabled: true,
    label: 'Pay Now',
    order: 0
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**pay_link_id:** `String` — ID for the payment link.
    
</dd>
</dl>

<dl>
<dd>

**contact_us:** `Payabli::Types::ContactElement` — ContactUs section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**logo:** `Payabli::Types::Element` — Logo section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**message_before_paying:** `Payabli::Types::LabelElement` — Message section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**notes:** `Payabli::Types::NoteElement` — Notes section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**page:** `Payabli::Types::PageElement` — Page header section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**payment_button:** `Payabli::Types::LabelElement` — Payment button section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**payment_methods:** `Payabli::Types::MethodElement` — Payment methods section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**review:** `Payabli::Types::HeaderElement` — Review section of payment link page
    
</dd>
</dl>

<dl>
<dd>

**settings:** `Payabli::Types::PagelinkSetting` — Settings section of payment link page
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_link.add_pay_link_from_bill_lot_number(lot_number, request) -> Payabli::PaymentLink::Types::PayabliApiResponsePaymentLinks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates a vendor payment link for a specific bill lot number. This allows you to pay all bills with the same lot number for a vendor with a single payment link.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_link.add_pay_link_from_bill_lot_number(
  lotNumber: 'LOT-2024-001',
  entryPoint: 'billing',
  vendorNumber: 'VENDOR-123',
  mail2: 'customer@example.com; billing@example.com',
  amountFixed: 'true'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**lot_number:** `String` — Lot number of the bills to pay. All bills with this lot number will be included.
    
</dd>
</dl>

<dl>
<dd>

**entry_point:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**vendor_number:** `String` — The vendor number for the vendor being paid with this payment link.
    
</dd>
</dl>

<dl>
<dd>

**mail_2:** `String` — List of recipient email addresses. When there is more than one, separate them by a semicolon (;).
    
</dd>
</dl>

<dl>
<dd>

**amount_fixed:** `String` — Indicates whether customer can modify the payment amount. A value of `true` means the amount isn't modifiable, a value `false` means the payor can modify the amount to pay.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::PaymentLink::Types::PaymentPageRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## PaymentMethodDomain
<details><summary><code>client.payment_method_domain.add_payment_method_domain(request) -> Payabli::Types::AddPaymentMethodDomainApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a payment method domain to an organization or paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.add_payment_method_domain(
  domainName: 'checkout.example.com',
  entityId: 109,
  entityType: 'paypoint',
  applePay: {
    isEnabled: true
  },
  googlePay: {
    isEnabled: true
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**apple_pay:** `Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequestApplePay` — Apple Pay configuration information.
    
</dd>
</dl>

<dl>
<dd>

**google_pay:** `Payabli::PaymentMethodDomain::Types::AddPaymentMethodDomainRequestGooglePay` — Google Pay configuration information.
    
</dd>
</dl>

<dl>
<dd>

**domain_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**entity_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**entity_type:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.cascade_payment_method_domain(domain_id) -> Payabli::Types::PaymentMethodDomainGeneralResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cascades a payment method domain to all child entities. All paypoints and suborganization under this parent will inherit this domain and its settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.cascade_payment_method_domain();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_id:** `String` — The payment method domain's ID in Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.delete_payment_method_domain(domain_id) -> Payabli::PaymentMethodDomain::Types::DeletePaymentMethodDomainResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a payment method domain. You can't delete an inherited domain, you must delete a domain at the organization level.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.delete_payment_method_domain();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_id:** `String` — The payment method domain's ID in Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.get_payment_method_domain(domain_id) -> Payabli::Types::PaymentMethodDomainApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the details for a payment method domain.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.get_payment_method_domain();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_id:** `String` — The payment method domain's ID in Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.list_payment_method_domains() -> Payabli::PaymentMethodDomain::Types::ListPaymentMethodDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of payment method domains that belong to a PSP, organization, or paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.list_payment_method_domains(
  entityId: 1147,
  entityType: 'paypoint'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entity_id:** `Integer` 

Identifier for the organization or paypoint. 
- For organization, provide the organization ID - For paypoint, provide the paypoint ID
    
</dd>
</dl>

<dl>
<dd>

**entity_type:** `String` 

The type of entity. Valid values: 
  - organization
  - paypoint
  - psp
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — Number of records to skip. Defaults to `0`.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records for query response. Defaults to `20`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.update_payment_method_domain(domain_id, request) -> Payabli::Types::PaymentMethodDomainGeneralResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a payment method domain's configuration values.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.update_payment_method_domain(
  domainId: 'pmd_b8237fa45c964d8a9ef27160cd42b8c5',
  applePay: {
    isEnabled: false
  },
  googlePay: {
    isEnabled: false
  }
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_id:** `String` — The payment method domain's ID in Payabli.
    
</dd>
</dl>

<dl>
<dd>

**apple_pay:** `Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet` 
    
</dd>
</dl>

<dl>
<dd>

**google_pay:** `Payabli::PaymentMethodDomain::Types::UpdatePaymentMethodDomainRequestWallet` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.payment_method_domain.verify_payment_method_domain(domain_id) -> Payabli::Types::PaymentMethodDomainGeneralResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Verify a new payment method domain. If verification is successful, Apple Pay is automatically activated for the domain.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.payment_method_domain.verify_payment_method_domain();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_id:** `String` — The payment method domain's ID in Payabli.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Paypoint
<details><summary><code>client.paypoint.get_basic_entry(entry) -> Payabli::Paypoint::Types::GetBasicEntryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets the basic details for a paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.get_basic_entry();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.get_basic_entry_by_id(id_paypoint) -> Payabli::Paypoint::Types::GetBasicEntryByIdResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the basic details for a paypoint by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.get_basic_entry_by_id();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_paypoint:** `String` — Paypoint ID. You can find this value by querying `/api/Query/paypoints/{orgId}`
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.get_entry_config(entry) -> Payabli::Paypoint::Types::GetEntryConfigResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets the details for a single paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.get_entry_config(entry: '8cfec329267');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**entrypages:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.get_page(entry, subdomain) -> Payabli::Types::PayabliPages</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Gets the details for single payment page for a paypoint. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.get_page();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**subdomain:** `String` — Payment page identifier. The subdomain value is the last portion of the payment page URL. For example, in`https://paypages-sandbox.payabli.com/513823dc10/pay-your-fees-1`, the subdomain is `pay-your-fees-1`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.remove_page(entry, subdomain) -> Payabli::Types::PayabliApiResponseGeneric2Part</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a payment page in a paypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.remove_page();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**subdomain:** `String` — Payment page identifier. The subdomain value is the last portion of the payment page URL. For example, in`https://paypages-sandbox.payabli.com/513823dc10/pay-your-fees-1`, the subdomain is `pay-your-fees-1`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.save_logo(entry, request) -> Payabli::Types::PayabliApiResponse00Responsedatanonobject</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a paypoint logo. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.save_logo({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::FileContent` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.settings_page(entry) -> Payabli::Types::SettingsQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves an paypoint's basic settings like custom fields, identifiers, and invoicing settings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.settings_page();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.paypoint.migrate(request) -> Payabli::Paypoint::Types::MigratePaypointResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Migrates a paypoint to a new parent organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.paypoint.migrate({
  entryPoint: '473abc123def',
  newParentOrganizationId: 123,
  notificationRequest: {
    notificationUrl: 'https://webhook-test.yoursie.com',
    webHeaderParameters: [{
      key: 'testheader',
      value: '1234567890'
    }]
  }
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Payabli::Paypoint::Types::PaypointMoveRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Query
<details><summary><code>client.query.list_batch_details(entry) -> Payabli::QueryTypes::Types::QueryBatchesDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of batches and their details, including settled and
unsettled transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batch_details(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `settlementDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `gatewayTransId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `settledAmount`  (gt, ge, lt, le, eq, ne)
- `operation`    (in, nin, eq, ne)
- `source`   (in, nin, eq, ne)
- `batchNumber`  (ct, nct, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `isHold` (eq, ne)
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `batchId` (ct, nct, eq, neq)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**

- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_batch_details_org(org_id) -> Payabli::Types::QueryResponseSettlements</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of batches and their details, including settled and unsettled transactions for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batch_details_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `settlementDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `gatewayTransId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `settledAmount`  (gt, ge, lt, le, eq, ne)
- `operation`    (in, nin, eq, ne)
- `source`   (in, nin, eq, ne)
- `batchNumber`  (ct, nct, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `isHold` (eq, ne)
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `batchId` (ct, nct, eq, neq)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**

- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_batches(entry) -> Payabli::QueryTypes::Types::QueryBatchesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of batches for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batches(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `method` (in, nin, eq, ne)
- `connectorName` (ne, eq, ct, nct)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `feeBatchAmount` (gt, ge, lt, le, eq, ne)
- `netBatchAmount` (gt, ge, lt, le, eq, ne)
- `releaseAmount` (gt, ge, lt, le, eq, ne)
- `heldAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
- `expectedDepositDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `batchRecords` (gt, ge, lt, le, eq, ne)
- `transferId` (ne, eq)
- `transferDate` (gt, ge, lt, le, eq, ne)
- `grossAmount` (gt, ge, lt, le, eq, ne)
- `chargeBackAmount` (gt, ge, lt, le, eq, ne)
- `returnedAmount` (gt, ge, lt, le, eq, ne)
- `billingFeeAmount` (gt, ge, lt, le, eq, ne)
- `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
- `netFundedAmount` (gt, ge, lt, le, eq, ne)
- `adjustmentAmount` (gt, ge, lt, le, eq, ne)
- `processor` (ne, eq, ct, nct)
- `transferStatus` (ne, eq, in, nin)

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_batches_org(org_id) -> Payabli::QueryTypes::Types::QueryBatchesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of batches for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batches_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `method` (in, nin, eq, ne)
- `connectorName` (ne, eq, ct, nct)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `feeBatchAmount` (gt, ge, lt, le, eq, ne)
- `netBatchAmount` (gt, ge, lt, le, eq, ne)
- `releaseAmount` (gt, ge, lt, le, eq, ne)
- `heldAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
- `expectedDepositDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `batchRecords` (gt, ge, lt, le, eq, ne)
- `transferId` (ne, eq)
- `transferDate` (gt, ge, lt, le, eq, ne)
- `grossAmount` (gt, ge, lt, le, eq, ne)
- `chargeBackAmount` (gt, ge, lt, le, eq, ne)
- `returnedAmount` (gt, ge, lt, le, eq, ne)
- `billingFeeAmount` (gt, ge, lt, le, eq, ne)
- `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
- `netFundedAmount` (gt, ge, lt, le, eq, ne)
- `adjustmentAmount` (gt, ge, lt, le, eq, ne)
- `processor` (ne, eq, ct, nct)
- `transferStatus` (ne, eq, in, nin)

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `batchAmount(gt)=20` returns all records with a `batchAmount` greater than 20.00      
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_batches_out(entry) -> Payabli::Types::QueryBatchesOutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of MoneyOut batches for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batches_out(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted**:

- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `parentOrgId` (ne, eq, nin, in)
- `status` (in, nin, eq, ne)
- `orgId` (eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_batches_out_org(org_id) -> Payabli::Types::QueryBatchesOutResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of MoneyOut batches for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_batches_out_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted**:

- `batchDate` (gt, ge, lt, le, eq, ne)
- `batchNumber` (ne, eq)
- `batchAmount` (gt, ge, lt, le, eq, ne)
- `parentOrgId` (ne, eq, nin, in)
- `status` (in, nin, eq, ne)
- `orgId` (eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `paypointId` (ne, eq)
- `externalPaypointID` (ct, nct, eq, ne)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_chargebacks(entry) -> Payabli::Types::QueryChargebacksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of chargebacks and returned transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_chargebacks(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**
- `chargebackDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `netAmount`  (gt, ge, lt, le, eq, ne)
- `reasonCode`   (in, nin, eq, ne)
- `reason`  (ct, nct, eq, ne)
- `replyDate` (gt, ge, lt, le, eq, ne)
- `caseNumber`  (ct, nct, eq, ne)
- `status`   (in, nin, eq, ne)
- `accountType`   (in, nin, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted - enclosed between parentheses:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_chargebacks_org(org_id) -> Payabli::Types::QueryChargebacksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of chargebacks and returned transactions for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_chargebacks_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info> See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**

- `chargebackDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `netAmount`  (gt, ge, lt, le, eq, ne)
- `reasonCode`   (in, nin, eq, ne)
- `reason`  (ct, nct, eq, ne)
- `replyDate` (gt, ge, lt, le, eq, ne)
- `caseNumber`  (ct, nct, eq, ne)
- `status`   (in, nin, eq, ne)
- `accountType`   (in, nin, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted - enclosed between parentheses:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_customers(entry) -> Payabli::Types::QueryCustomerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of customers for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_customers(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more details.

**List of Accepted Field Names:**

- `createdDate` (gt, ge, lt, le, eq, ne)
- `customernumber` (ne, eq, ct, nct)
- `firstname` (ne, eq, ct, nct)
- `lastname` (ne, eq, ct, nct)
- `name` (ct, nct)
- `address` (ne, eq, ct, nct)
- `city` (ne, eq, ct, nct)
- `country` (ne, eq, ct, nct)
- `zip` (ne, eq, ct, nct)
- `state` (ne, eq, ct, nct)
- `shippingaddress` (ne, eq, ct, nct)
- `shippingcity` (ne, eq, ct, nct)
- `shippingcountry` (ne, eq, ct, nct)
- `shippingzip` (ne, eq, ct, nct)
- `shippingstate` (ne, eq, ct, nct)
- `phone` (ne, eq, ct, nct)
- `email` (ne, eq, ct, nct)
- `company` (ne, eq, ct, nct)
- `username` (ne, eq, ct, nct)
- `balance` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

**List of Accepted Comparisons:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**Accepted Parameters:**
- `limitRecord`: Max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: Initial record in query

**Example Usage:**
`balance(gt)=20` will return all records with a balance greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_customers_org(org_id) -> Payabli::Types::QueryCustomerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of customers for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_customers_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more details.

**List of Accepted Field Names:**

- `createdDate` (gt, ge, lt, le, eq, ne)
- `customernumber` (ne, eq, ct, nct)
- `firstname` (ne, eq, ct, nct)
- `lastname` (ne, eq, ct, nct)
- `name` (ct, nct)
- `address` (ne, eq, ct, nct)
- `city` (ne, eq, ct, nct)
- `country` (ne, eq, ct, nct)
- `zip` (ne, eq, ct, nct)
- `state` (ne, eq, ct, nct)
- `shippingaddress` (ne, eq, ct, nct)
- `shippingcity` (ne, eq, ct, nct)
- `shippingcountry` (ne, eq, ct, nct)
- `shippingzip` (ne, eq, ct, nct)
- `shippingstate` (ne, eq, ct, nct)
- `phone` (ne, eq, ct, nct)
- `email` (ne, eq, ct, nct)
- `company` (ne, eq, ct, nct)
- `username` (ne, eq, ct, nct)
- `balance` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name
- `orgId` (eq) *mandatory when entry=org*
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

**List of Accepted Comparisons:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**Accepted Parameters:**
- `limitRecord`: Max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: Initial record in query

**Example Usage:**
`balance(gt)=20` will return all records with a balance greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_notification_reports(entry) -> Payabli::Types::QueryResponseNotificationReports</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of all reports generated in the last 60 days for a single entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_notification_reports(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `reportName` (ct, nct, eq, ne)
- `createdAt` (gt, ge, lt, le, eq, ne)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: reportName(ct)=tr  return all records containing the string "tr"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_notification_reports_org(org_id) -> Payabli::Types::QueryResponseNotificationReports</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of all reports generated in the last 60 days for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_notification_reports_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query <Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `reportName` (ct, nct, eq, ne)
- `createdAt` (gt, ge, lt, le, eq, ne)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: reportName(ct)=tr  return all records containing the string "tr"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_notifications(entry) -> Payabli::Types::QueryResponseNotifications</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of notifications for an entrypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_notifications(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `frequency` (in, nin,ne, eq)
- `method` (in, nin, eq, ne)
- `event` (in, nin, eq, ne)
- `target` (ct, nct, eq, ne)
- `status` (eq, ne)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20  return all records with totalAmount greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_notifications_org(org_id) -> Payabli::Types::QueryResponseNotifications</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return a list of notifications for an organization. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_notifications_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `frequency` (in, nin,ne, eq)
- `method` (in, nin, eq, ne)
- `event` (in, nin, eq, ne)
- `target` (ct, nct, eq, ne)
- `status` (eq, ne)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: totalAmount(gt)=20  return all records with totalAmount greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_organizations(org_id) -> Payabli::QueryTypes::Types::ListOrganizationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of an organization's suborganizations and their full details such as orgId, users, and settings. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_organizations(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
**List of field names accepted:**

- `createdAt` (gt, ge, lt, le, eq, ne)
- `startDate` (gt, ge, lt, le, eq, ne)
- `dbaname`  (ct, nct)
- `legalname`  (ct, nct)
- `ein`  (ct, nct)
- `address`  (ct, nct)
- `city`  (ct, nct)
- `state`  (ct, nct)
- `phone`  (ct, nct)
- `mcc`  (ct, nct)
- `owntype`  (ct, nct)
- `ownerName`  (ct, nct)
- `contactName`  (ct, nct)
- `orgParentname`  (ct, nct)
- `boardingId` (eq, ne) 
- `entryName`  (ct, nct)

**List of comparison accepted - enclosed between parentheses:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array

**List of parameters accepted:**

- `limitRecord` : max number of records for query (default="20", "0" or negative value for all)
- `fromRecord` : initial record in query

Example: `dbaname(ct)=hoa` returns all records with a `dbaname` containing "hoa"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_payout(entry) -> Payabli::Types::QueryPayoutTransaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of money out transactions (payouts) for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_payout(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

List of field names accepted:

  - `status` (in, nin, eq, ne)
  - `transactionDate` (gt, ge, lt, le, eq, ne)
  - `billNumber` (ct, nct)
  - `vendorNumber` (ct, nct, eq, ne)
  - `vendorName` (ct, nct, eq, ne)
  - `paymentMethod` (ct, nct, eq, ne, in, nin)
  - `paymentId` (ct, nct, eq, ne)
  - `parentOrgId` (ne, eq, nin, in)
  - `batchNumber` (ct, nct, eq, ne)
  - `totalAmount` (gt, ge, lt, le, eq, ne)
  - `paypointLegal` (ne, eq, ct, nct)
  - `paypointDba` (ne, eq, ct, nct)
  - `accountId` (ne, eq, ct, nct)
  - `orgName` (ne, eq, ct, nct)
  - `externalPaypointID` (ct, nct, eq, ne)
  - `paypointId` (eq, ne)
  - `vendorId` (eq, ne)
  - `vendorEIN` (ct, nct, eq, ne)
  - `vendorPhone` (ct, nct, eq, ne)
  - `vendorEmail` (ct, nct, eq, ne)
  - `vendorAddress` (ct, nct, eq, ne)
  - `vendorCity` (ct, nct, eq, ne)
  - `vendorState` (ct, nct, eq, ne)
  - `vendorCountry` (ct, nct, eq, ne)
  - `vendorZip` (ct, nct, eq, ne)
  - `vendorMCC` (ct, nct, eq, ne)
  - `vendorLocationCode` (ct, nct, eq, ne)
  - `vendorCustomField1` (ct, nct, eq, ne)
  - `vendorCustomField2` (ct, nct, eq, ne)
  - `comments` (ct, nct)
  - `payaccountCurrency` (ne, eq, in, nin)
  - `remitAddress` (ct, nct)
  - `source` (ct, nct, eq, ne)
  - `updatedOn` (gt, ge, lt, le, eq, ne)
  - `feeAmount` (gt, ge, lt, le, eq, ne)
  - `lotNumber` (ct, nct)
  - `customerVendorAccount` (ct, nct, eq, ne)
  - `batchId` (eq, ne)
  - `AchTraceNumber` (eq, ne)
  - `payoutProgram`(eq, ne) the options are `managed` or `odp`. For example, `payoutProgram(eq)=managed` returns all records with a `payoutProgram` equal to `managed`. 

  List of comparison accepted - enclosed between parentheses:
  - eq or empty => equal
  - gt => greater than
  - ge => greater or equal
  - lt => less than
  - le => less or equal
  - ne => not equal
  - ct => contains
  - nct => not contains
  - in => inside array separated by \"|\"
  - nin => not inside array separated by \"|\"

  List of parameters accepted:

  - limitRecord : max number of records for query (default=\"20\", \"0\" or negative value for all)
  - fromRecord : initial record in query
  - sortBy : indicate field name and direction to sort the results

  Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00

  Example: `sortBy=desc(netamount)` returns all records sorted by `netAmount` descending
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_payout_org(org_id) -> Payabli::Types::QueryPayoutTransaction</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of money out transactions (payouts) for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_payout_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
List of field names accepted:
  
  - `status` (in, nin, eq, ne)
  - `transactionDate` (gt, ge, lt, le, eq, ne)
  - `billNumber` (ct, nct)
  - `vendorNumber` (ct, nct, eq, ne)
  - `vendorName` (ct, nct, eq, ne)
  - `parentOrgId` (ne, eq, nin, in)
  - `paymentMethod` (ct, nct, eq, ne, in, nin)
  - `paymentId` (ct, nct, eq, ne)
  - `batchNumber` (ct, nct, eq, ne)
  - `totalAmount` (gt, ge, lt, le, eq, ne)
  - `paypointLegal` (ne, eq, ct, nct)
  - `paypointDba` (ne, eq, ct, nct)
  - `accountId` (ne, eq, ct, nct)
  - `orgName` (ne, eq, ct, nct)
  - `externalPaypointID` (ct, nct, eq, ne)
  - `paypointId` (eq, ne)
  - `vendorId` (eq, ne)
  - `vendorEIN` (ct, nct, eq, ne)
  - `vendorPhone` (ct, nct, eq, ne)
  - `vendorEmail` (ct, nct, eq, ne)
  - `vendorAddress` (ct, nct, eq, ne)
  - `vendorCity` (ct, nct, eq, ne)
  - `vendorState` (ct, nct, eq, ne)
  - `vendorCountry` (ct, nct, eq, ne)
  - `vendorZip` (ct, nct, eq, ne)
  - `vendorMCC` (ct, nct, eq, ne)
  - `vendorLocationCode` (ct, nct, eq, ne)
  - `vendorCustomField1` (ct, nct, eq, ne)
  - `vendorCustomField2` (ct, nct, eq, ne)
  - `comments` (ct, nct)
  - `payaccountCurrency` (ne, eq, in, nin)
  - `remitAddress` (ct, nct)
  - `source` (ct, nct, eq, ne)
  - `updatedOn` (gt, ge, lt, le, eq, ne)
  - `feeAmount` (gt, ge, lt, le, eq, ne)
  - `lotNumber` (ct, nct)
  - `customerVendorAccount` (ct, nct, eq, ne)
  - `batchId` (eq, ne)
  - `AchTraceNumber` (eq, ne)
  - `payoutProgram`(eq, ne) the options are `managed` or `odp`. For example, `payoutProgram(eq)=managed` returns all records with a `payoutProgram` equal to `managed`.

  List of comparison accepted - enclosed between parentheses:
  - eq or empty => equal
  - gt => greater than
  - ge => greater or equal
  - lt => less than
  - le => less or equal
  - ne => not equal
  - ct => contains
  - nct => not contains
  - in => inside array separated by \"|\"
  - nin => not inside array separated by \"|\"

  List of parameters accepted:

  - limitRecord : max number of records for query (default=\"20\", \"0\" or negative value for all)
  - fromRecord : initial record in query
  - sortBy : indicate field name and direction to sort the results

  Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00

  Example: `sortBy=desc(netamount)` returns all records sorted by `netAmount` descending
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_paypoints(org_id) -> Payabli::Types::QueryEntrypointResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of paypoints in an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_paypoints(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
**List of field names accepted:**

- `createdAt` (gt, ge, lt, le, eq, ne)
- `lastModified` (gt, ge, lt, le, eq, ne)
- `startDate` (gt, ge, lt, le, eq, ne)
- `dbaname`  (ct, nct)
- `status` (eq, ne)
- `legalname`  (ct, nct)
- `externalPaypointID` (ct, nct)
- `ein`  (ct, nct)
- `address`  (ct, nct)
- `city`  (ct, nct)
- `state`  (ct, nct)
- `phone`  (ct, nct)
- `mcc`  (ct, nct)
- `owntype`  (ct, nct)
- `ownerName`  (ct, nct)
- `contactName`  (ct, nct)
- `paypointId` (eq, ne)
- `orgParentname`  (ct, nct, in, nin)
- `boardingId` (eq, ne) 
- `entryName`  (ct, nct)
- `externalOrgID` (ct, nct)

**List of comparison accepted - enclosed between parentheses:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array

**List of parameters accepted:**

- `limitRecord` : max number of records for query (default="20", "0" or negative value for all)
- `fromRecord` : initial record in query

Example: `dbaname(ct)=hoa` returns all records with a `dbaname` containing "hoa"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_settlements(entry) -> Payabli::Types::QueryResponseSettlements</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of settled transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_settlements(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `settlementDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `gatewayTransId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `settledAmount`  (gt, ge, lt, le, eq, ne)
- `operation`    (in, nin, eq, ne)
- `source`   (in, nin, eq, ne)
- `batchNumber`  (ct, nct, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `isHold` (eq, ne)
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `batchId` (ct, nct, eq, neq)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**

- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_settlements_org(org_id) -> Payabli::Types::QueryResponseSettlements</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of settled transactions for an organization. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_settlements_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `settlementDate` (gt, ge, lt, le, eq, ne)
- `depositDate` (gt, ge, lt, le, eq, ne)
- `transId`  (ne, eq, ct, nct)
- `gatewayTransId`  (ne, eq, ct, nct)
- `method`   (in, nin, eq, ne)
- `settledAmount`  (gt, ge, lt, le, eq, ne)
- `operation`    (in, nin, eq, ne)
- `source`   (in, nin, eq, ne)
- `batchNumber`  (ct, nct, eq, ne)
- `payaccountLastfour`   (nct, ct)
- `payaccountType`   (ne, eq, in, nin)
- `customerFirstname`   (ct, nct, eq, ne)
- `customerLastname`    (ct, nct, eq, ne)
- `customerName`   (ct, nct)
- `customerId`  (eq, ne)
- `customerNumber`  (ct, nct, eq, ne)
- `customerCompanyname`    (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity`    (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity`    (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId`  (eq) *mandatory when entry=org*
- `isHold` (eq, ne)
- `paypointId`  (ne, eq)
- `paypointLegal`  (ne, eq, ct, nct)
- `paypointDba`  (ne, eq, ct, nct)
- `orgName`  (ne, eq, ct, nct)
- `batchId` (ct, nct, eq, neq)
- `additional-xxx`  (ne, eq, ct, nct) where xxx is the additional field name

**List of comparison accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**

- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `settledAmount(gt)=20` returns all records with a `settledAmount` greater than 20.00.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_subscriptions(entry) -> Payabli::Types::QuerySubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of subscriptions for a single paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_subscriptions(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.
      
**List of field names accepted:**

- `startDate` (gt, ge, lt, le, eq, ne)
- `endDate` (gt, ge, lt, le, eq, ne)
- `nextDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin, ne, eq)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `untilcancelled` (eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `payaccountCurrency` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `externalPaypointId` (ct, nct, ne, eq)
- `subId` (eq, ne)
- `orderDescription` (ct, nct)
- `cycles` (eq, ne, gt, ge, lt, le)
- `leftcycles` (eq, ne, gt, ge, lt, le)
- `createdAt` (eq, ne, gt, ge, lt, le)
- `updatedOn` (eq, ne, gt, ge, lt, le)
- `invoiceNumber` (ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name  

**List of comparison operators accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_subscriptions_org(org_id) -> Payabli::Types::QuerySubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a list of subscriptions for a single org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_subscriptions_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.
      
**List of field names accepted:**

- `startDate` (gt, ge, lt, le, eq, ne)
- `endDate` (gt, ge, lt, le, eq, ne)
- `nextDate` (gt, ge, lt, le, eq, ne)
- `frequency` (in, nin, ne, eq)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `status` (in, nin, eq, ne)
- `untilcancelled` (eq, ne)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `payaccountCurrency` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `orgId` (eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `externalPaypointId` (ct, nct, ne, eq)
- `subId` (eq, ne)
- `orderDescription` (ct, nct)
- `cycles` (eq, ne, gt, ge, lt, le)
- `leftcycles` (eq, ne, gt, ge, lt, le)
- `createdAt` (eq, ne, gt, ge, lt, le)
- `updatedOn` (eq, ne, gt, ge, lt, le)
- `invoiceNumber` (ct, nct)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name  

**List of comparison operators accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array      
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_transactions(entry) -> Payabli::Types::QueryResponseTransactions</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of transactions for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
By default, this endpoint returns only transactions from the last 60 days. To query transactions outside of this period, include `transactionDate` filters.
For example, this request parameters filter for transactions between April 01, 2024 and April 09, 2024. 
``` curl --request GET \
  --url https://sandbox.payabli.com/api/Query/transactions/org/1?limitRecord=20&fromRecord=0&transactionDate(ge)=2024-04-01T00:00:00&transactionDate(le)=2024-04-09T23:59:59\
  --header 'requestToken: <api-key>'

  ```
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_transactions(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `transactionDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct, in, nin)
- `gatewayTransId` (ne, eq, ct, nct)
- `orderId` (ne, eq)
- `scheduleId` (ne, eq)
- `returnId` (ne, eq)
- `refundId` (ne, eq)
- `idTrans` (ne, eq)
- `orgId` (ne, eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `externalPaypointId` (ct, nct, eq, ne)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne, ct, nct)
- `status` (in, nin, eq, ne)
- `settlementStatus` (in, nin, eq, ne)
- `batchNumber` (nct, ct)
- `invoiceNumber` (ct, nct)
- `ipAddress` (eq, ne)
- `authCode` (ct, nct)
- `orderDescription` (ct, nct)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `payaccountCurrency` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `deviceId` (ct, nct, in, nin, eq, ne)
- `AchSecCode` ( ct, nct, in, nin, eq, ne)
- `AchHolderType` (ct, nct, in, nin, eq, and ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name related to customer data
- 'invoiceAdditional-xxx' (ne, eq, ct, nct) where xxx is the additional field name related to invoice data

**List of comparison operators accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array      
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_transactions_org(org_id) -> Payabli::Types::QueryResponseTransactions</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>


Retrieve a list of transactions for an organization. Use filters to
limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.


By default, this endpoint returns only transactions from the last 60 days. To query transactions outside of this period, include `transactionDate` filters.

For example, this request parameters filter for transactions between April 01, 2024 and April 09, 2024. 

```
curl --request GET \
  --url https://sandbox.payabli.com/api/Query/transactions/org/1?limitRecord=20&fromRecord=0&transactionDate(ge)=2024-04-01T00:00:00&transactionDate(le)=2024-04-09T23:59:59\
  --header 'requestToken: <api-key>'

  ```
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_transactions_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.

**List of field names accepted:**

- `transactionDate` (gt, ge, lt, le, eq, ne)
- `transId` (ne, eq, ct, nct, in, nin)
- `gatewayTransId` (ne, eq, ct, nct)
- `orderId` (ne, eq)
- `scheduleId` (ne, eq)
- `returnId` (ne, eq)
- `refundId` (ne, eq)
- `idTrans` (ne, eq)
- `orgId` (ne, eq)
- `paypointId` (ne, eq)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)
- `externalPaypointId` (ct, nct, eq, ne)
- `method` (in, nin, eq, ne)
- `totalAmount` (gt, ge, lt, le, eq, ne)
- `netAmount` (gt, ge, lt, le, eq, ne)
- `feeAmount` (gt, ge, lt, le, eq, ne)
- `operation` (in, nin, eq, ne)
- `source` (in, nin, eq, ne, ct, nct)
- `status` (in, nin, eq, ne)
- `settlementStatus` (in, nin, eq, ne)
- `batchNumber` (nct, ct)
- `invoiceNumber` (ct, nct)
- `authCode` (ct, nct)
- `orderDescription` (ct, nct)
- `payaccountLastfour` (nct, ct)
- `payaccountType` (ne, eq, in, nin)
- `payaccountCurrency` (ne, eq, in, nin)
- `customerFirstname` (ct, nct, eq, ne)
- `customerLastname` (ct, nct, eq, ne)
- `customerName` (ct, nct)
- `customerId` (eq, ne)
- `customerNumber` (ct, nct, eq, ne)
- `customerCompanyname` (ct, nct, eq, ne)
- `customerAddress` (ct, nct, eq, ne)
- `customerCity` (ct, nct, eq, ne)
- `customerZip` (ct, nct, eq, ne)
- `customerState` (ct, nct, eq, ne)
- `customerCountry` (ct, nct, eq, ne)
- `customerPhone` (ct, nct, eq, ne)
- `customerEmail` (ct, nct, eq, ne)
- `customerShippingAddress` (ct, nct, eq, ne)
- `customerShippingCity` (ct, nct, eq, ne)
- `customerShippingZip` (ct, nct, eq, ne)
- `customerShippingState` (ct, nct, eq, ne)
- `customerShippingCountry` (ct, nct, eq, ne)
- `deviceId` (ct, nct, in, nin, eq, ne)
- `AchSecCode` ( ct, nct, in, nin, eq, ne)
- `AchHolderType`` (ct, nct, in, nin, eq, and ne)
- `additional-xxx` (ne, eq, ct, nct) where xxx is the additional field name related to customer data
- 'invoiceAdditional-xxx' (ne, eq, ct, nct) where xxx is the additional field name related to invoice data

**List of comparison operators accepted:**
- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array
- `nin` => not inside array
  
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_transfer_details(entry, transfer_id) -> Payabli::QueryTypes::Types::QueryTransferDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of transfer details records for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_transfer_details(
  entry: '47862acd',
  transferId: 123456
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**transfer_id:** `Integer` — The numeric identifier for the transfer, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter
the query. 

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>

See [Filters and Conditions
Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference)
for more information.


**List of field names accepted:**

  - `grossAmount` (gt, ge, lt, le, eq, ne)
  - `chargeBackAmount` (gt, ge, lt, le, eq, ne)
  - `returnedAmount` (gt, ge, lt, le, eq, ne)
  - `billingFeeAmount` (gt, ge, lt, le, eq, ne)
  - `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
  - `netFundedAmount` (gt, ge, lt, le, eq, ne)
  - `adjustmentAmount` (gt, ge, lt, le, eq, ne)
  - `splitFundingAmount` (gt, ge, lt, le, eq, ne)
  - `operation` (in, nin, eq, ne)
  - `transactionId` (eq, ne, in, nin)
  - `category` (eq, ne, ct, nct)
  - `type` (eq, ne, in, nin)
  - `method` (eq, ne, in, nin)
  
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_transfers(entry) -> Payabli::Types::TransferQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of transfers for a paypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_transfers(
  entry: '47862acd',
  fromRecord: 0,
  limitRecord: 20
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
List of field names accepted:

  - `transferDate` (gt, ge, lt, le, eq, ne)
  - `grossAmount` (gt, ge, lt, le, eq, ne)
  - `chargeBackAmount` (gt, ge, lt, le, eq, ne)
  - `returnedAmount` (gt, ge, lt, le, eq, ne)
  - `billingFeeAmount` (gt, ge, lt, le, eq, ne)
  - `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
  - `netFundedAmount` (gt, ge, lt, le, eq, ne)
  - `adjustmentAmount` (gt, ge, lt, le, eq, ne)
  - `processor` (ne, eq, ct, nct)
  - `transferStatus` (ne, eq, in, nin)
  - `batchNumber` (ne, eq, ct, nct)
  - `batchId` (ne, eq, in, nin)
  - `transferId` (in, nin, eq, ne)
  - `bankAccountNumber` (ct, nct, ne, eq)
  - `bankRoutingNumber` (ct, nct, ne, eq)
  - `batchCurrency` (in, nin, ne, eq)
  - `parentOrgName` (ct, nct, ne, eq)
  - `parentOrgId` (ct, nct, ne, eq)
  - `externalPaypointID` (ct, nct)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_transfers_org(org_id) -> Payabli::Types::TransferQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of transfers for an org. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_transfers_org(
  orgId: 123,
  fromRecord: 0,
  limitRecord: 20
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for more information.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
List of field names accepted:

  - `transferDate` (gt, ge, lt, le, eq, ne)
  - `grossAmount` (gt, ge, lt, le, eq, ne)
  - `chargeBackAmount` (gt, ge, lt, le, eq, ne)
  - `returnedAmount` (gt, ge, lt, le, eq, ne)
  - `billingFeeAmount` (gt, ge, lt, le, eq, ne)
  - `thirdPartyPaidAmount` (gt, ge, lt, le, eq, ne)
  - `netFundedAmount` (gt, ge, lt, le, eq, ne)
  - `adjustmentAmount` (gt, ge, lt, le, eq, ne)
  - `processor` (ne, eq, ct, nct)
  - `transferStatus` (ne, eq, in, nin)
  - `batchNumber` (ne, eq, ct, nct)
  - `batchId` (ne, eq, in, nin)
  - `transferId` (in, nin, eq, ne)
  - `bankAccountNumber` (ct, nct, ne, eq)
  - `bankRoutingNumber` (ct, nct, ne, eq)
  - `batchCurrency` (in, nin, ne, eq)
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_users_org(org_id) -> Payabli::Types::QueryUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of users for an org. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_users_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**

- `createdDate` (gt, ge, lt, le, eq, ne)
- `name`  (ne, eq, ct, nct)
- `email`  (ne, eq, ct, nct)
- `status`   (in, nin, eq, ne)
- `role.xxx`  (ne, eq, ct, nct) where xxx is the role field: `roleLabel` or `roleValue`

**List of comparison accepted - enclosed between parentheses:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `name(ct)=john`  return all records with name containing 'john'.
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_users_paypoint(entry) -> Payabli::Types::QueryUserResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of users for a paypoint. Use filters to limit results.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_users_paypoint(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query.
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

**List of field names accepted:**

- `createdDate` (gt, ge, lt, le, eq, ne)
- `name`  (ne, eq, ct, nct)
- `email`  (ne, eq, ct, nct)
- `status`   (in, nin, eq, ne)
- `role.xxx`  (ne, eq, ct, nct) where xxx is the role field: `roleLabel` or `roleValue`

**List of comparison accepted - enclosed between parentheses:**

- `eq` or empty => equal
- `gt` => greater than
- `ge` => greater or equal
- `lt` => less than
- `le` => less or equal
- `ne` => not equal
- `ct` => contains
- `nct` => not contains
- `in` => inside array separated by "|"
- `nin` => not inside array separated by "|"

**List of parameters accepted:**
- `limitRecord`: max number of records for query (default="20", "0" or negative value for all)
- `fromRecord`: initial record in query

Example: `name(ct)=john`  return all records with name containing 'john'
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_vendors(entry) -> Payabli::Types::QueryResponseVendors</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of vendors for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_vendors(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — The paypoint's entrypoint identifier. [Learn more](/api-reference/api-overview#entrypoint-vs-entry)
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `method` (in, nin, eq, ne)
- `enrollmentStatus` (in,nin, eq, ne)
- `status` (in, nin, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `name` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `phone` (ct, nct, eq, ne)
- `email` (ct, nct, eq, ne)
- `address` (ct, nct, eq, ne)
- `city` (ct, nct, eq, ne)
- `state` (ct, nct, eq, ne)
- `country` (ct, nct, eq, ne)
- `zip` (ct, nct, eq, ne)
- `mcc` (ct, nct, eq, ne)
- `locationCode` (ct, nct, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `parentOrgId` (ne, eq, nin, in)
- `paypointDba` (ne, eq, ct, nct)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_vendors_org(org_id) -> Payabli::Types::QueryResponseVendors</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of vendors for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_vendors_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `method` (in, nin, eq, ne)
- `enrollmentStatus` (in,nin, eq, ne)
- `status` (in, nin, eq, ne)
- `vendorNumber` (ct, nct, eq, ne)
- `name` (ct, nct, eq, ne)
- `ein` (ct, nct, eq, ne)
- `phone` (ct, nct, eq, ne)
- `email` (ct, nct, eq, ne)
- `address` (ct, nct, eq, ne)
- `city` (ct, nct, eq, ne)
- `state` (ct, nct, eq, ne)
- `country` (ct, nct, eq, ne)
- `zip` (ct, nct, eq, ne)
- `mcc` (ct, nct, eq, ne)
- `locationCode` (ct, nct, eq, ne)
- `paypointLegal` (ne, eq, ct, nct)
- `paypointDba` (ne, eq, ct, nct)
- `parentOrgId` (ne, eq, nin, in)
- `orgName` (ne, eq, ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array separated by "|"
- nin => not inside array separated by "|"

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: `netAmount(gt)=20` returns all records with a `netAmount` greater than 20.00
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_vcards(entry) -> Payabli::Types::VCardQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of vcards (virtual credit cards) issued for an entrypoint. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_vcards(
  entry: '8cfec329267',
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
List of field names accepted:  

  - `status` (in, nin, eq, ne)  
  - `createdAt` (gt, ge, lt, le, eq, ne)  
  - `cardToken` (ct, nct, eq, ne)  
  - `lastFour` (ct, nct, eq, ne)  
  - `expirationDate` (ct, nct, eq, ne)  
  - `payoutId` (ct, nct, eq, ne, in, nin)  
  - `vendorId` (ct, nct, eq, ne, in, nin)  
  - `miscData1` (ct, nct, eq, ne)  
  - `miscData2` (ct, nct, eq, ne)  
  - `currentUses` (gt, ge, lt, le, eq, ne)  
  - `amount` (gt, ge, lt, le, eq, ne)  
  - `balance` (gt, ge, lt, le, eq, ne)  
  - `paypointLegal` (ne, eq, ct, nct)  
  - `paypointDba` (ne, eq, ct, nct)  
  - `orgName` (ne, eq, ct, nct)  
  - `externalPaypointId` (ct, nct, eq, ne)  
  - `paypointId` (in, nin, eq, ne)  

List of comparison accepted - enclosed between parentheses:  

  - eq or empty => equal  
  - gt => greater than  
  - ge => greater or equal  
  - lt => less than  
  - le => less or equal  
  - ne => not equal  
  - ct => contains  
  - nct => not contains  
  - in => inside array separated by "|"  
  - nin => not inside array separated by "|"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.query.list_vcards_org(org_id) -> Payabli::Types::VCardQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a list of vcards (virtual credit cards) issued for an organization. Use filters to limit results. Include the `exportFormat` query parameter to return the results as a file instead of a JSON response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.query.list_vcards_org(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**export_format:** `Payabli::Types::ExportFormat` 
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 

Collection of field names, conditions, and values used to filter the query. 
<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>
List of field names accepted:  

  - `status` (in, nin, eq, ne)  
  - `createdAt` (gt, ge, lt, le, eq, ne)  
  - `cardToken` (ct, nct, eq, ne)  
  - `lastFour` (ct, nct, eq, ne)  
  - `expirationDate` (ct, nct, eq, ne)  
  - `payoutId` (ct, nct, eq, ne, in, nin)  
  - `vendorId` (ct, nct, eq, ne, in, nin)  
  - `miscData1` (ct, nct, eq, ne)  
  - `miscData2` (ct, nct, eq, ne)  
  - `currentUses` (gt, ge, lt, le, eq, ne)  
  - `amount` (gt, ge, lt, le, eq, ne)  
  - `balance` (gt, ge, lt, le, eq, ne)  
  - `paypointLegal` (ne, eq, ct, nct)  
  - `paypointDba` (ne, eq, ct, nct)  
  - `orgName` (ne, eq, ct, nct)  
  - `externalPaypointId` (ct, nct, eq, ne)  
  - `paypointId` (in, nin, eq, ne)  

List of comparison accepted - enclosed between parentheses:  

  - eq or empty => equal  
  - gt => greater than  
  - ge => greater or equal  
  - lt => less than  
  - le => less or equal  
  - ne => not equal  
  - ct => contains  
  - nct => not contains  
  - in => inside array separated by "|"  
  - nin => not inside array separated by "|"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Statistic
<details><summary><code>client.statistic.basic_stats(entry_id, freq, level, mode) -> Internal::Types::Array[Payabli::Statistic::Types::StatBasicQueryRecord]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the basic statistics for an organization or a paypoint, for a given time period, grouped by a particular frequency. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.statistic.basic_stats(
  entryId: 1000000,
  freq: 'm',
  level: 1,
  mode: 'ytd',
  endDate: '2023-05-23',
  startDate: '2023-03-23'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry_id:** `Integer` — Identifier in Payabli for the entity.
    
</dd>
</dl>

<dl>
<dd>

**freq:** `String` 

Frequency to group series. Allowed values:

- `m` - monthly
- `w` - weekly
- `d` - daily
- `h` - hourly

For example, `w` groups the results by week.
    
</dd>
</dl>

<dl>
<dd>

**level:** `Integer` 

The entry level for the request: 
  - 0 for Organization
  - 2 for Paypoint
    
</dd>
</dl>

<dl>
<dd>

**mode:** `String` 

Mode for the request. Allowed values:

- `custom` - Allows you to set a custom date range
- `ytd` - Year To Date
- `mtd` - Month To Date
- `wtd` - Week To Date
- `today` - All current day
- `m12` - Last 12 months
- `d30` - Last 30 days
- `h24` - Last 24 hours
- `lasty` - Last Year
- `lastm` - Last Month
- `lastw` - Last Week
- `yesterday` - Last Day
  
    
</dd>
</dl>

<dl>
<dd>

**end_date:** `String` 

Used with `custom` mode. The end date for the range. 
Valid formats:
  - YYYY-mm-dd
  - YYYY/mm/dd
  - mm-dd-YYYY
  - mm/dd/YYYY
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` — List of parameters.
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` 

Used with `custom` mode. The start date for the range. 
Valid formats:
   - YYYY-mm-dd
   - YYYY/mm/dd
   -  mm-dd-YYYY
   - mm/dd/YYYY
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.statistic.customer_basic_stats(customer_id, freq, mode) -> Internal::Types::Array[Payabli::Statistic::Types::SubscriptionStatsQueryRecord]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the basic statistics for a customer for a specific time period, grouped by a selected frequency. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.statistic.customer_basic_stats(
  customerId: 998,
  freq: 'm',
  mode: 'ytd'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**customer_id:** `Integer` — Payabli-generated customer ID. Maps to "Customer ID" column in PartnerHub. 
    
</dd>
</dl>

<dl>
<dd>

**freq:** `String` 

Frequency to group series. Allowed values:

- `m` - monthly
- `w` - weekly
- `d` - daily
- `h` - hourly

For example, `w` groups the results by week.
    
</dd>
</dl>

<dl>
<dd>

**mode:** `String` 

Mode for request. Allowed values:

- `ytd` - Year To Date
- `mtd` - Month To Date
- `wtd` - Week To Date
- `today` - All current day
- `m12` - Last 12 months
- `d30` - Last 30 days
- `h24` - Last 24 hours
- `lasty` - Last Year
- `lastm` - Last Month
- `lastw` - Last Week
- `yesterday` - Last Day
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` — List of parameters.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.statistic.sub_stats(entry_id, interval, level) -> Internal::Types::Array[Payabli::Statistic::Types::StatBasicQueryRecord]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves the subscription statistics for a given interval for a paypoint or organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.statistic.sub_stats(
  entryId: 1000000,
  interval: '30',
  level: 1
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry_id:** `Integer` — Identifier in Payabli for the entity.
    
</dd>
</dl>

<dl>
<dd>

**interval:** `String` 

Interval to get the data. Allowed values:

- `all` - all intervals
- `30` - 1-30 days
- `60` - 31-60 days
- `90` - 61-90 days
- `plus` - +90 days
    
</dd>
</dl>

<dl>
<dd>

**level:** `Integer` 

The entry level for the request: 
  - 0 for Organization
  - 2 for Paypoint
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` — List of parameters
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.statistic.vendor_basic_stats(freq, id_vendor, mode) -> Internal::Types::Array[Payabli::Statistic::Types::StatisticsVendorQueryRecord]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve the basic statistics about a vendor for a given time period, grouped by frequency. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.statistic.vendor_basic_stats(
  freq: 'm',
  idVendor: 1,
  mode: 'ytd'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**freq:** `String` 

Frequency to group series. Allowed values:

- `m` - monthly
- `w` - weekly
- `d` - daily
- `h` - hourly

For example, `w` groups the results by week.
    
</dd>
</dl>

<dl>
<dd>

**id_vendor:** `Integer` — Vendor ID.
    
</dd>
</dl>

<dl>
<dd>

**mode:** `String` 

Mode for request. Allowed values:

- `ytd` - Year To Date
- `mtd` - Month To Date
- `wtd` - Week To Date
- `today` - All current day
- `m12` - Last 12 months
- `d30` - Last 30 days
- `h24` - Last 24 hours
- `lasty` - Last Year
- `lastm` - Last Month
- `lastw` - Last Week
- `yesterday` - Last Day
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` — List of parameters
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Subscription
<details><summary><code>client.subscription.get_subscription(sub_id) -> Payabli::Types::SubscriptionQueryRecords</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single subscription's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.subscription.get_subscription();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sub_id:** `Integer` — The subscription ID. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.subscription.new_subscription(request) -> Payabli::Subscription::Types::AddSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a subscription or scheduled payment to run at a specified time and frequency. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.subscription.new_subscription();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Subscription::Types::SubscriptionRequestBody` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.subscription.remove_subscription(sub_id) -> Payabli::Subscription::Types::RemoveSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a subscription, autopay, or recurring payment and prevents future charges.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.subscription.remove_subscription();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sub_id:** `Integer` — The subscription ID. 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.subscription.update_subscription(sub_id, request) -> Payabli::Subscription::Types::UpdateSubscriptionResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a subscription's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.subscription.update_subscription(
  subId: 231,
  setPause: true
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sub_id:** `Integer` — The subscription ID. 
    
</dd>
</dl>

<dl>
<dd>

**payment_details:** `Payabli::Types::PaymentDetail` — Object describing details of the payment. To skip the payment, set the `totalAmount` to 0. Payments will be paused until the amount is updated to a non-zero value. When `totalAmount` is set to 0, the `serviceFee` must also be set to 0.
    
</dd>
</dl>

<dl>
<dd>

**schedule_details:** `Payabli::Types::ScheduleDetail` — Object describing the schedule for subscription
    
</dd>
</dl>

<dl>
<dd>

**set_pause:** `Internal::Types::Boolean` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Templates
<details><summary><code>client.templates.delete_template(template_id) -> Payabli::Types::PayabliApiResponseTemplateId</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a template by ID. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.delete_template();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `Integer` — The boarding template ID. Can be found at the end of the boarding template URL in PartnerHub. Example: `https://partner-sandbox.payabli.com/myorganization/boarding/edittemplate/80`. Here, the template ID is `80`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.getlink_template(ignore_empty, template_id) -> Payabli::Types::BoardingLinkApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Generates a boarding link from a boarding template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.getlink_template();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ignore_empty:** `Internal::Types::Boolean` — Ignore read-only and empty fields Default is `false`. If `ignoreEmpty` = `false` and any field is empty, then the request returns a failure response. If `ignoreEmpty` = `true`, the request returns the boarding link name regardless of whether fields are empty.
    
</dd>
</dl>

<dl>
<dd>

**template_id:** `Integer` — The boarding template ID. Can be found at the end of the boarding template URL in PartnerHub. Example: `https://partner-sandbox.payabli.com/myorganization/boarding/edittemplate/80`. Here, the template ID is `80`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.get_template(template_id) -> Payabli::Types::TemplateQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a boarding template's details by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.get_template();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `Integer` — The boarding template ID. Can be found at the end of the boarding template URL in PartnerHub. Example: `https://partner-sandbox.payabli.com/myorganization/boarding/edittemplate/80`. Here, the template ID is `80`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.list_templates(org_id) -> Payabli::Types::TemplateQueryResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a list of boarding templates for an organization. Use filters to limit results. You can't make a request that includes filters from the API console in the documentation. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.list_templates(
  orgId: 123,
  fromRecord: 251,
  limitRecord: 0,
  sortBy: 'desc(field_name)'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**org_id:** `Integer` — The numeric identifier for organization, assigned by Payabli.
    
</dd>
</dl>

<dl>
<dd>

**from_record:** `Integer` — The number of records to skip before starting to collect the result set.
    
</dd>
</dl>

<dl>
<dd>

**limit_record:** `Integer` — Max number of records to return for the query. Use `0` or negative value to return all records.
    
</dd>
</dl>

<dl>
<dd>

**parameters:** `Internal::Types::Hash[String, String]` 


Collection of field names, conditions, and values used to filter the query.

<Info>
  **You must remove `parameters=` from the request before you send it, otherwise Payabli will ignore the filters.**

  Because of a technical limitation, you can't make a request that includes filters from the API console on this page. The response won't be filtered. Instead, copy the request, remove `parameters=` and run the request in a different client.

  For example:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?parameters=totalAmount(gt)=1000&limitRecord=20

  should become:

  --url https://api-sandbox.payabli.com/api/Query/transactions/org/236?totalAmount(gt)=1000&limitRecord=20
</Info>


See [Filters and Conditions Reference](/developers/developer-guides/pay-ops-reporting-engine-overview#filters-and-conditions-reference) for help.

List of field names accepted:
- `createdAt` (gt, ge, lt, le, eq, ne)
- `title` (ct, nct)
- `description` (ct, nct)
- `code` (ct, nct)
- `orgParentname` (ct, nct)

List of comparison accepted - enclosed between parentheses:
- eq or empty => equal
- gt => greater than
- ge => greater or equal
- lt => less than
- le => less or equal
- ne => not equal
- ct => contains
- nct => not contains
- in => inside array
- nin => not inside array

List of parameters accepted:
- limitRecord : max number of records for query (default="20", "0" or negative value for all)
- fromRecord : initial record in query

Example: title(ct)=hoa return all records with title containing "hoa"
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — The field name to use for sorting results. Use `desc(field_name)` to sort descending by `field_name`, and use `asc(field_name)` to sort ascending by `field_name`.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TokenStorage
<details><summary><code>client.token_storage.add_method(request) -> Payabli::TokenStorage::Types::AddMethodResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Saves a payment method for reuse. This call exchanges sensitive payment information for a token that can be used to process future transactions. The `ReferenceId` value in the response is the `storedMethodId` to use with transactions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.token_storage.add_method();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**ach_validation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**create_anonymous:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**force_customer_creation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**temporary:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::TokenStorage::Types::RequestTokenStorage` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.token_storage.get_method(method_id) -> Payabli::TokenStorage::Types::GetMethodResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves details for a saved payment method.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.token_storage.get_method(
  methodId: '32-8877drt00045632-678',
  cardExpirationFormat: 1,
  includeTemporary: false
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**method_id:** `String` — The saved payment method ID.
    
</dd>
</dl>

<dl>
<dd>

**card_expiration_format:** `Integer` 

Format for card expiration dates in the response. 

Accepted values:
  
- 0: default, no formatting. Expiration dates are returned in the format they're saved in.

- 1: MMYY
 
- 2: MM/YY
    
</dd>
</dl>

<dl>
<dd>

**include_temporary:** `Internal::Types::Boolean` — When `true`, the request will include temporary tokens in the search and return details for a matching temporary token. The default behavior searches only for permanent tokens.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.token_storage.remove_method(method_id) -> Payabli::Types::PayabliApiResponsePaymethodDelete</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Deletes a saved payment method.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.token_storage.remove_method();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**method_id:** `String` — The saved payment method ID.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.token_storage.update_method(method_id, request) -> Payabli::Types::PayabliApiResponsePaymethodDelete</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a saved payment method.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.token_storage.update_method(methodId: '32-8877drt00045632-678');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**method_id:** `String` — The saved payment method ID.
    
</dd>
</dl>

<dl>
<dd>

**ach_validation:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::TokenStorage::Types::RequestTokenStorage` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## User
<details><summary><code>client.user.add_user(request) -> Payabli::User::Types::AddUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.add_user({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Payabli::Types::UserData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.auth_refresh_user() -> Payabli::Types::PayabliApiResponseUserMfa</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.auth_refresh_user();
```
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.auth_reset_user(request) -> Payabli::User::Types::AuthResetUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.auth_reset_user();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**email:** `String` — The user's email address.
    
</dd>
</dl>

<dl>
<dd>

**entry:** `String` — Identifier for entrypoint originating the request (used by front-end apps)
    
</dd>
</dl>

<dl>
<dd>

**entry_type:** `Integer` — Type of entry identifier: 0 - partner, 2 - paypoint. This is used by front-end apps, required if an Entry is indicated.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.auth_user(provider, request) -> Payabli::Types::PayabliApiResponseMfaBasic</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint requires an application API token.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.auth_user(provider: 'provider');
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**provider:** `String` — Auth provider. This fields is optional and defaults to null for the built-in provider.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**entry:** `String` — Identifier for entry point originating the request (used by front-end apps)
    
</dd>
</dl>

<dl>
<dd>

**entry_type:** `Integer` — Type of entry identifier: 0 - partner, 2 - paypoint. This is used by front-end apps, required if an Entry is indicated.
    
</dd>
</dl>

<dl>
<dd>

**psw:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**user_token_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.change_psw_user(request) -> Payabli::User::Types::ChangePswUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.change_psw_user();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**psw:** `String` — New User password
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.delete_user(user_id) -> Payabli::User::Types::DeleteUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.delete_user();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `Integer` — The Payabli-generated `userId` value.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.edit_mfa_user(user_id, request) -> Payabli::User::Types::EditMfaUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.edit_mfa_user({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `Integer` — User Identifier
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::MfaData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.edit_user(user_id, request) -> Payabli::Types::PayabliApiResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.edit_user({});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `Integer` — User Identifier
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::UserData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.get_user(user_id) -> Payabli::Types::UserQueryRecord</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.get_user(
  userId: 1000000,
  entry: '478ae1234'
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**user_id:** `Integer` — The Payabli-generated `userId` value.
    
</dd>
</dl>

<dl>
<dd>

**entry:** `String` — The entrypoint identifier.
    
</dd>
</dl>

<dl>
<dd>

**level:** `Integer` — Entry level: 0 - partner, 2 - paypoint
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.logout_user() -> Payabli::User::Types::LogoutUserResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.logout_user();
```
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.resend_mfa_code(entry, entry_type, usrname) -> Payabli::Types::PayabliApiResponseMfaBasic</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.resend_mfa_code();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` —  
    
</dd>
</dl>

<dl>
<dd>

**entry_type:** `Integer` —  
    
</dd>
</dl>

<dl>
<dd>

**usrname:** `String` —  
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.user.validate_mfa_user(request) -> Payabli::Types::PayabliApiResponseUserMfa</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.user.validate_mfa_user();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**mfa_code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**mfa_validation_code:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Vendor
<details><summary><code>client.vendor.add_vendor(entry, request) -> Payabli::Types::PayabliApiResponseVendors</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a vendor in an entrypoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vendor.add_vendor({
  vendorNumber: '1234',
  name1: "Herman's Coatings and Masonry",
  name2: '<string>',
  ein: '12-3456789',
  phone: '5555555555',
  email: 'example@email.com',
  address1: '123 Ocean Drive',
  address2: 'Suite 400',
  city: 'Miami',
  state: 'FL',
  zip: '33139',
  country: 'US',
  mcc: '7777',
  locationCode: 'MIA123',
  contacts: [{
    contactName: 'Herman Martinez',
    contactEmail: 'example@email.com',
    contactTitle: 'Owner',
    contactPhone: '3055550000'
  }],
  billingData: {
    id: 123,
    bankName: 'Country Bank',
    routingAccount: '123123123',
    accountNumber: '123123123',
    bankAccountHolderName: 'Gruzya Adventure Outfitters LLC',
    bankAccountFunction: 0
  },
  paymentMethod: 'managed',
  vendorStatus: 1,
  remitAddress1: '123 Walnut Street',
  remitAddress2: 'Suite 900',
  remitCity: 'Miami',
  remitState: 'FL',
  remitZip: '31113',
  remitCountry: 'US',
  payeeName1: '<string>',
  payeeName2: '<string>',
  customerVendorAccount: 'A-37622',
  internalReferenceId: 123
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` — Entrypoint identifier.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::VendorData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.vendor.delete_vendor(id_vendor) -> Payabli::Types::PayabliApiResponseVendors</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a vendor. 
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vendor.delete_vendor();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_vendor:** `Integer` — Vendor ID.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.vendor.edit_vendor(id_vendor, request) -> Payabli::Types::PayabliApiResponseVendors</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates a vendor's information. Send only the fields you need to update.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vendor.edit_vendor({
  name1: "Theodore's Janitorial"
});
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_vendor:** `Integer` — Vendor ID.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Payabli::Types::VendorData` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.vendor.get_vendor(id_vendor) -> Payabli::Types::VendorQueryRecord</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a vendor's details.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.vendor.get_vendor();
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id_vendor:** `Integer` — Vendor ID.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Wallet
<details><summary><code>client.wallet.configure_apple_pay_organization(request) -> Payabli::Types::ConfigureApplePayOrganizationApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure and activate Apple Pay for a Payabli organization
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.wallet.configure_apple_pay_organization(
  cascade: true,
  isEnabled: true,
  orgId: 901
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cascade:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**is_enabled:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.wallet.configure_apple_pay_paypoint(request) -> Payabli::Types::ConfigureApplePaypointApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure and activate Apple Pay for a Payabli paypoint
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.wallet.configure_apple_pay_paypoint(
  entry: '8cfec329267',
  isEnabled: true
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**is_enabled:** `Internal::Types::Boolean` — When `true`, Apple Pay is enabled.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.wallet.configure_google_pay_organization(request) -> Payabli::Types::ConfigureApplePayOrganizationApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure and activate Google Pay for a Payabli organization
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.wallet.configure_google_pay_organization(
  cascade: true,
  isEnabled: true,
  orgId: 901
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**cascade:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**is_enabled:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**org_id:** `Integer` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.wallet.configure_google_pay_paypoint(request) -> Payabli::Types::ConfigureGooglePaypointApiResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure and activate Google Pay for a Payabli paypoint
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.wallet.configure_google_pay_paypoint(
  entry: '8cfec329267',
  isEnabled: true
);
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**entry:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**is_enabled:** `Internal::Types::Boolean` — When `true`, Google Pay is enabled.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>
