# ☁️ Cloud Computing Starter Kit

This is a starter kit for beginners who want to get into cloud. You’ll use Terraform to create AWS resources and GitHub Actions to automate it — no extra tools needed.

---

## 🚀 What You’ll Learn
- How to create real AWS infrastructure with Terraform
- How to run Terraform from GitHub automatically using Actions
- How to connect your GitHub repo to your AWS account
- What DevOps + cloud looks like in real life

---

## 🔧 What You Need
- GitHub account
- AWS account (Free Tier is fine)
- That’s it. No CLI tools unless you want to test it locally

---

## 🗂️ What’s Inside
| File | What it does |
|------|---------------|
| `main.tf` | Terraform code that makes an S3 bucket |
| `.github/workflows/terraform.yml` | Automation — runs `terraform plan` and `apply` |
| `README.md` | This guide |

---

## 🧪 How to Use It

### 1. Fork this repo
Top right corner → click Fork

### 2. Add AWS credentials
In your repo:  
Go to **Settings → Secrets and variables → Actions New Repository Secret**  
Add these two secrets:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

(You can make them in the AWS console by creating a new IAM user with `AmazonS3FullAccess`)

### 3. Push any change to main
That’s it. Terraform will run and create your S3 bucket automatically.

---

## ✅ How to Check If It Worked
- Go to your AWS Console → S3
- You should see a bucket like:  
  `my-cloud-starterkit-bucket-<random>`

---

## 🧠 What You Can Try Next
- Add a second AWS resource (like EC2 or Lambda)
- Customize the bucket name using `variables.tf`
- Set up backend state in S3
- Try the same project with Azure or GCP

---

This repo is for anyone who’s starting from scratch and wants to stop watching tutorials and actually build something. You don’t need to know everything — just start here and build on it.

— Made for beginners in tech. Built by someone who gets it.
