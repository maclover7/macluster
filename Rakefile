namespace :ansible do
  namespace :playbook do
    desc "First time server setup tasks"
    task :setup do
      run_command(
        "ansible-playbook ansible/setup.yml -i ansible/hosts"
      )
    end

    desc "Advanced server setup tasks"
    task playbook: ['ansible:util:galaxy'] do
      run_command(
        "ansible-playbook ansible/playbook.yml -i ansible/hosts"
      )
    end

    desc "Deploy an application"
    task :deploy, [:name, :repo] do |task, args|
      run_command(
      "ansible-playbook ansible/deploy.yml -i ansible/hosts --ask-vault-pass " +
      "--extra-vars='application=#{args.name} applicationFull=#{args.repo}'"
      )
    end
  end

  namespace :util do
    desc "Install dependencies from Ansible Galaxy"
    task :galaxy do
      run_command(
        "ansible-galaxy install -r ansible/requirements.yml -p ansible/roles"
      )
    end
  end
end

def run_command(cmd)
  puts "Running `#{cmd}`:"
  sh cmd
end
