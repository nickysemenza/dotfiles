# Defined interactively
function dk --description 'docker kill'
set count (docker ps -a -q | wc -l)
echo "killing $count containers" 
docker stop (docker ps -a -q) && docker rm (docker ps -a -q)
end
