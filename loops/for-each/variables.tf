variable "vegetables" {
    type = list(string)
    default = ["carrot", "beetroot", "keera", "carrot", "tomato"]
}

variable "vegetables_set" {
    type = set(string)
    default = ["carrot", "beetroot", "keera", "carrot", "tomato"]
}

