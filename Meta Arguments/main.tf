resource "aws_s3_bucket" "my_bucket" {
    count = 2
    bucket = var.bucket-name[count.index]

    tags = {
        Name = "My-Bucket"
    }
}
resource "aws_s3_bucket" "my_bucket2" {
    for_each = var.bucket-name2
    bucket = each.value

    depends_on = [aws_s3_bucket.my_bucket]
    tags = {
        Name = "my-bucket2"
    }
}
