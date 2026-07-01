variable "bucket-name" {
    type = list(string)
    default = ["my-bucket-1293820248203", "my-bucket-9933023131"]
}

variable "bucket-name2" {
    type = set(string)
    default = ["funny-guys-123", "funny-mummys-1234"]
}