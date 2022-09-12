class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTH/JiKKbUbTugBqOhgGtwb+hSwZQB655uX1ahRQX7f33siOG1/kcTa+3+Q+9qzqE9Qro8Y9NWAJB0pBup1yHfoiAtY5x6IqyDYxg2Kr2mj2iGVDRRrHiainTlE0NXLwnc4xwEG1bvef5657Iv2EKBQRZloRVmXLfdZWN1cXdgVlZNyCutP9EU0CjTRiws4kf1Apap/PHZWlVYPOZHkoJv1j7UpQcfrpUtI+R9WksGzDsAYZ8fGavuKO0NEad1g2rtqpY/g5T2bHu7GIcPlXv/AsSnvOuxfzAUFAWvlFcvibLVvcKAa+mUbCKVUvpJ4P27fxYdEl7qtYp/BpulOr6j',
  }  
}
