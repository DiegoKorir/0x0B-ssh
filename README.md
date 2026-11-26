# 0x0B-ssh

Passwordless SSH setup using an RSA key pair, a client config and puppet

## Files

|          File            |                       Purpose                                         |

| 0-create_ssh_key_pair.sh | Creates a 4096-bit RSA key pair named school with a passphrase        |

| 1-submit_public_key.sh   | Prints ~/.ssh/school.pub with a reminder to share only the public key |

| 2-use_a_private_key.sh   | Connects to the server using the key ~/.ssh/school                    |

| 3-ssh_config.sh          | Writes ~/.ssh/config to use the school key and disable password login |

| 100-puppet_ssh_config.pp | Puppet manifest that sets the same options in the SSH client config   |

## Usage

1. ./0-create_ssh_key_pair.sh creates school and school.pub.
2. Make sure 'school' and 'school.pub' are in '~/.ssh/' (copy them if not) and 'school' has 'chmod 600'
3. ./1-submit_public_key.sh prints the public key to send to the administrator.
4. ./2-use_a_private_key.sh connects to the server.
5. ./3-ssh_config.sh configures the SSH client. Run it once only.
6. puppet apply 100-puppet_ssh_config.pp applies the Puppet version (needs sudo and the stdlib module).

## Security

The private key school is never shared, printed or committed. Only the public key is shared.
