 node('master') {
 
     stage ('Spring Checkout')
     {
          dir ('spring') {
          git 'https://github.com/harishchanderdalal/spring-petclinic.git'
   	      echo 'git clone Sucessfully'
                       }
     }
     
     stage ('Spring Boot')
     {
          dir ('spring') {
          sh 'nohup ./mvnw spring-boot:run  </dev/null >/dev/null 2>&1 &'
             echo 'Build Spring'
                        }
     }
     
     stage ('Spring UI')
     {
         	      echo 'Ip:8080'
    }
 
    stage ('Vagrant Checkout')
    {
          dir ('vagrant') { 
          git 'https://github.com/harishchanderdalal/vagrantEc2Tomcat.git'
    	      echo 'Vagrant Clone'
             }
    }
 
    stage ('Vagrant Build')
    {
          dir ('vagrant') { 
          sh 'export key=${key}'
          sh 'export access=${access}'
          sh 'export keypair=${keypair}'
          sh 'export region=${region}'
          sh 'export sgroup=${sgroup}'
          sh 'export tag=${tag}'
          sh 'export owner=${owner}'
          sh 'chmod +x vagrantfile.sh'
          sh './vagrantfile.sh > Vagrantfile'
              echo 'Vagrantfile Created'
              }
    }
 
    stage ('vagrant box')
    {
          dir ('vagrant') {
          sh 'vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box'
             echo 'Vagrant Ready'
             }
    }
 
    stage ('Ec2 Provison')
    {
       dir ('vagrant') {
       sh 'vagrant up --provider=aws'
             echo 'Ec2 Created'
             } 
            }
  
  }     
             
