variable "keyvar" {
    type = object({
        name = string
        rg_name = string
        tags = optional(string,"trinket")
        location = string
        size = optional(list(string),["xyz","23"])
        dimensions = object({
            len = optional(number,65/7)
            bred = string
            location = string
            dims = map(object({
                leng = optional(string,"247")
                time = optional(string,"2.47.9")
                breadth = optional(list(string),["247abc0","237","1.8.7.7"])
                height = optional(list(string),["app/json-prod/azp"])
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

variable "name" {
    type = string
nullable = false
description = "Specifies the name of the resource."
}

variable "rg_name" {
    type = string
nullable = false
description = "The name of the resource group in which to create the Key Vault."
}

variable "tags" {
    type = map(string)
nullable = false
description = "Associated tags."
}

variable "location" {
    type = string
nullable = false
description = "Location."
}

variable "configs" {
    type = map(any)
    description = "configs data"
    default = {
        "max_conn" : "100",
        "allowed" : "0",
        "order" : "top"
    }
}
