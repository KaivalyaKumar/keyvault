variable "alert" {
    type = list(object({
        name = string
        size = string
        image = map(object({
            jpeg = string
            dims = list(object({
                len = string
                breadth = optional(list(number),[21,3])
            }))
        }))
    }))
    nullable = false
}
