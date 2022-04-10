variable "path" {
    default = "PATH_TO_DIRECTORY"
}

provider "google" {
    project = "PROJECT_ID"
    region = "us-central1"
    zone = "us-central1-c"
    # Otherwise read from GOOGLE_APPLICATION_CREDENTIALS env variable
    credentials = "${file("${var.path}\\terraform-key.json")}"
}