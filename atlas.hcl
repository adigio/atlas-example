env "local" {
  url = "mysql://root:root@localhost:3307/"
  dev = "mysql://root:root@localhost:3308/"

  src = [
    "file://schemas/cuoco",
    "file://schemas/mis_tareas"
  ]
}