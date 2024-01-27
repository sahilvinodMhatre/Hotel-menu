pipeline{
    agent any 
    
    stages{
        
            stage("code")
            {
                steps{
                    echo "cloning the code"
                    git url:"https://github.com/sahilvinodMhatre/Hotel-menu.git", branch:"main"
                }
            }
            stage("build")
            {
                steps{
                    echo "builing the docker image"
                    bat "docker build -t hotel-menu-pl . "
                }
            }
            stage("push to docker")
            {
                steps{
                    echo "Pushing to docker hub"
                    withCredentials([usernamePassword(credentialsId:"dockerhub",passwordVariable:"dockerHubPass",usernameVariable:"dockerUser")]){
                        bat "docker tag hotel-menu-pl  ${env.dockerUser}/hotel-menu-pl:latest"
                        bat "docker login -u ${env.dockerUser} -p ${env.dockerHubPass}"
                        bat "docker push ${env.dockerUser}/hotel-menu-pl:latest"
                    }
                }
            }
            stage("deploy"){
                 steps{
                    echo "Deploing the image"
                    bat "docker compose down && docker compose up -d"
                }
            }
        
    }
    
}