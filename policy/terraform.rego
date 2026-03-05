package main

num_destroy[] = num {
    all := resources[]
    destroys := [res |  res:= all[_]; res.change.actions[_] == "destroy"]
    num := count(destroys)
}

deny[msg] {
    num_resources := num_destroy[]
    num_resources > 0
    msg := "Dont Break anything"
}
