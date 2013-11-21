module VagrantPlugins
  module GuestArch
    module Cap
      class Halt
        def self.halt(machine)
          begin
            machine.communicate.sudo("poweroff")
          rescue IOError
            # Do nothing because SSH connection closed and it probably
            # means the VM just shut down really fast.
          end
        end
      end
    end
  end
end
