locals{
    metadata = {
      serial-port-enable = 1
      ssh-keys  = "localhost:${file("/home/stv/hw_terraform/03/yc_ssh.pub")} "
    }
}
