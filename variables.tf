variable "keyvar" {
    type = object({
        name = string
        size = optional(list(string),["xyz","23"])
        dimensions = object({
            len = optional(number,65/7)
            bred = string
            dims = map(object({
                leng = optional(string,"247")
                breadth = optional(list(string),["24*7"])
            }))
        })
        tetrax = list(object({
            len = string
            bred = string
            dims = object({
                leng = string
                breadth = optional(list(number),[007,1077.66,60-7])
            })
        }))
    })
    nullable = false
}
