# Business Operations Understanding

## Purpose

This document explains the business operations concepts that support the Bakery Operations Analytics Dashboard.

The purpose is to demonstrate how operational reporting connects to wider business processes such as purchasing, invoice matching, reconciliations, audit trails, and management review.

The dashboard itself focuses on sales, production, waste, staffing, and revenue. It does not include supplier invoices, purchase orders, or goods received records. However, the dashboard provides operational signals that could trigger further review of these business processes in a real organisation.

---

## Project Context

The Bakery Operations Analytics Dashboard was developed to analyse fictional bakery operations data across several reporting weeks.

The dataset includes information such as:

* Product
* Category
* Branch
* Week
* Units produced
* Units sold
* Waste units
* Unit price
* Revenue
* Waste value
* Staff hours allocated
* Wastage rate
* Operational notes

The dashboard and SQL reports produced the following overall results:

| Metric               |      Value |
| -------------------- | ---------: |
| Total Revenue        | £51,424.90 |
| Total Units Sold     |     17,467 |
| Total Units Produced |     20,181 |
| Total Waste Units    |      2,714 |
| Total Waste Value    |  £8,368.60 |
| Overall Wastage Rate |     13.45% |

These figures provide useful operational visibility. For example, high waste value or high waste units may indicate problems with production planning, demand forecasting, stock rotation, or purchasing decisions.

---

## Purchase Order Lifecycle

A purchase order is a formal document used by a business to request goods or services from a supplier.

In a bakery context, purchase orders may be used to order items such as:

* Flour
* Butter
* Sugar
* Coffee beans
* Packaging
* Cleaning supplies
* Baking equipment

A simple purchase order lifecycle could follow these steps:

1. A stock or supply need is identified.
2. A purchase request is raised.
3. A purchase order is created.
4. The purchase order is reviewed and approved.
5. The purchase order is sent to the supplier.
6. The supplier delivers the goods.
7. The delivery is checked against the order.
8. The supplier invoice is received.
9. The invoice is matched against the purchase order and delivery.
10. Payment is approved.
11. Records are stored for audit purposes.

In a real bakery environment, waste and production data could influence purchasing decisions. For example, if a product is repeatedly overproduced and wasted, the business may need to review ingredient ordering quantities.

---

## Invoice Matching

Invoice matching is the process of checking whether a supplier invoice agrees with the purchase order and the goods received.

This helps prevent incorrect or unsupported payments.

A common method is three-way matching:

| Document            | Purpose                                |
| ------------------- | -------------------------------------- |
| Purchase Order      | Confirms what was ordered              |
| Goods Received Note | Confirms what was delivered            |
| Supplier Invoice    | Confirms what the supplier is charging |

If all three records match, the invoice can usually be approved for payment.

If there is a mismatch, the invoice should be reviewed before payment is made.

Example:

| Record              | Example              |
| ------------------- | -------------------- |
| Purchase Order      | 100kg flour ordered  |
| Goods Received Note | 80kg flour delivered |
| Supplier Invoice    | 100kg flour charged  |

This mismatch would need investigation before the invoice is approved.

The current bakery dataset does not include supplier invoices or goods received records. However, the dashboard could still highlight issues that may require invoice or purchasing review.

For example, if waste value is unusually high for certain products, the business may review whether too many ingredients are being purchased or whether production quantities are too high.

---

## Reconciliations

Reconciliation means comparing records to confirm they agree.

In an operational environment, reconciliations help identify missing records, errors, duplicate entries, or unusual activity.

Examples of reconciliations relevant to this project include:

| Reconciliation Area | Example Check                                          |
| ------------------- | ------------------------------------------------------ |
| Sales records       | Compare transaction data with dashboard revenue totals |
| Production records  | Compare units produced with units sold and waste units |
| Waste records       | Compare waste units with waste value calculations      |
| Staffing records    | Compare staff hours with revenue per staff hour        |
| Stock records       | Compare ingredient usage with production output        |
| Supplier records    | Compare purchase orders, deliveries, and invoices      |

In the current project, reconciliation is most relevant to the relationship between production, sales, and waste.

For example:

| Metric               |  Value |
| -------------------- | -----: |
| Total Units Produced | 20,181 |
| Total Units Sold     | 17,467 |
| Total Waste Units    |  2,714 |

These figures reconcile logically because units produced are split between units sold and units wasted.

This type of check helps confirm that the operational data is internally consistent.

---

## Audit Trails

An audit trail is a record of actions, approvals, changes, and evidence.

Audit trails help answer questions such as:

* Who approved a purchase?
* When was an invoice checked?
* Who updated a stock record?
* Why was a production quantity changed?
* Who approved a dashboard change?
* When was an operational issue closed?

In a real business, audit trails support accountability, compliance, and governance.

For this project, a simple audit trail could record actions such as:

| Action                     | Example Evidence                      |
| -------------------------- | ------------------------------------- |
| Dashboard created          | Power BI file saved in repository     |
| Dataset updated            | Excel workbook version uploaded       |
| SQL query created          | SQL file stored in GitHub             |
| Waste issue identified     | Dashboard screenshot or SQL output    |
| Management action proposed | Action Summary sheet                  |
| Workflow documented        | Workflow documentation in Docs folder |

Although this project uses fictional data, storing files in GitHub creates a basic project audit trail. It shows what was created, when it was uploaded, and how the project is structured.

---

## Link to Dashboard Findings

The dashboard provides several operational findings that could lead to business process review.

### Waste Value

The highest waste value products included:

| Product               | Waste Value |
| --------------------- | ----------: |
| Pain au Chocolat      |     £842.80 |
| Ham & Cheese Sandwich |     £837.20 |
| Croissant             |     £787.50 |
| Cinnamon Roll         |     £775.00 |
| Vegan Wrap            |     £715.20 |

Pain au Chocolat had the highest waste value in the dataset. In a real bakery, this could trigger a review of production planning, demand forecasting, or ingredient purchasing.

High waste value does not automatically prove that purchasing is wrong. However, it is a useful signal that management should investigate.

### Waste Units

Croissant was identified as a high waste product by total waste units.

This could indicate that the bakery is producing more croissants than customer demand requires. A possible action would be to reduce production volume slightly and monitor whether waste decreases in the following reporting period.

### Overall Wastage Rate

The overall wastage rate was approximately 13.45%.

This means that around 13.45% of produced items were wasted across the dataset.

A business may decide to set a target to reduce wastage below a certain level, such as 12%. If waste remains above target, the issue could be logged and reviewed through an operational workflow.

### Revenue and Staffing

The dashboard also measured revenue per staff hour. This helps the business understand how effectively staff time is being converted into revenue.

If revenue per staff hour falls in a specific week or branch, management may review staffing allocation, opening hours, product availability, or customer demand.

---

## Example Bakery Operations Workflow

The following example shows how dashboard insights could connect to business operations.

1. The dashboard identifies high waste value for Pain au Chocolat.
2. The issue is logged by the bakery manager.
3. The manager reviews units produced, units sold, and waste units.
4. The issue is categorised as a waste and production planning concern.
5. The manager checks whether production quantities are too high.
6. The manager reviews whether ingredient orders are aligned with actual demand.
7. A corrective action is agreed, such as reducing production volume.
8. The next week’s dashboard results are reviewed.
9. The issue is closed if waste improves.
10. If the issue continues, it is escalated to an operations manager.

This shows how a dashboard finding can become a managed business issue rather than just a number on a report.

---

## Example Business Operations Controls

The following controls could support better operational management.

| Control           | Purpose                                                         |
| ----------------- | --------------------------------------------------------------- |
| Purchase approval | Ensures stock and ingredients are ordered responsibly           |
| Invoice matching  | Prevents payment for incorrect or incomplete deliveries         |
| Waste review      | Identifies products with repeated waste problems                |
| Reconciliation    | Confirms that records agree across sales, production, and waste |
| Audit trail       | Records actions, approvals, and changes                         |
| Escalation rule   | Ensures repeated issues are reviewed by management              |

These controls help reduce waste, improve accountability, and strengthen operational decision-making.

---

## Future Data Improvements

The current project dataset is useful for sales, waste, staffing, and product performance analysis. However, it does not include all data needed for a complete purchasing or finance operations process.

Future improvements could include additional tables for:

| Table             | Purpose                                            |
| ----------------- | -------------------------------------------------- |
| Suppliers         | Track supplier names, lead times, and risk ratings |
| Purchase Orders   | Track what the bakery orders and when              |
| Goods Received    | Track what was actually delivered                  |
| Supplier Invoices | Track supplier charges and payment status          |
| Stock Levels      | Track ingredient inventory                         |
| Approval Log      | Track who approved purchases or adjustments        |

Adding these tables would allow the project to analyse supplier performance, purchasing efficiency, invoice mismatches, and stock control issues.

---

## Business Value

Understanding business operations improves the quality of reporting and decision-making.

It helps ensure that:

* Data is interpreted correctly
* Operational issues are investigated properly
* Waste and production problems are linked to business action
* Financial and operational records are reliable
* Managers can trace decisions and approvals
* Reporting outputs support practical improvement

This strengthens the Bakery Operations Analytics Dashboard by connecting data analysis to real operational processes.