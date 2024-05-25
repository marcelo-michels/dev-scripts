
# Docker
alias dockerRemoveAllContainers="docker rm -f \$(docker ps -a -q)"
alias dockerRemoveAllImages="docker rmi -f \$(docker images -a -q)"
alias dockerRemoveAll="docker system prune -f"