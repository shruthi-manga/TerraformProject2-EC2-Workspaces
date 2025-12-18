# Terraform AWS EC2 with Workspaces (dev / test / prod)

This Terraform project provisions **AWS EC2 instances** where the **number of instances varies by environment** using **Terraform workspaces** and **separate tfvars files**.

---

## 📌 Features

* Uses **Terraform workspaces** (`dev`, `test`, `prod`)
* EC2 instance **count differs per environment**
* Environment-specific configuration via **`.tfvars` files**
* Clean GitHub setup with sensitive files excluded
* Ready for CI/CD integration

---

## 📂 Project Structure

```
.
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── dev.tfvars
├── test.tfvars
├── prod.tfvars
├── .gitignore
└── README.md
```

---

## 🌍 Environment Configuration

Each environment defines its own EC2 instance count using tfvars.

### Example:

* **dev** → 1 EC2 instance
* **test** → 2 EC2 instances
* **prod** → 3 EC2 instances

These values are controlled in:

* `dev.tfvars`
* `test.tfvars`
* `prod.tfvars`

---

## 🛠 Prerequisites

* Terraform ≥ 1.x
* AWS CLI configured
* AWS account with EC2 permissions

---

## 🚀 Usage

### 1️⃣ Initialize Terraform

```
terraform init
```

---

### 2️⃣ Create / Select Workspace

```
terraform workspace new dev
terraform workspace select dev
```

(Repeat for `test` or `prod` as needed)

---

### 3️⃣ Plan Infrastructure

```
terraform plan -var-file=dev.tfvars
```
## updating readme file after adding yml file in github actions