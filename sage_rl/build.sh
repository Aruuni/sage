g++ -pthread -std=c++11 src/mem-manager.cc src/flow.cc -o mem-manager
g++ -pthread -std=c++11 src/sage.cc src/flow.cc -o sage
g++ -pthread -std=c++11 src/sage-server-mahimahi.cc src/flow.cc -o sage-server-mahimahi
g++ -std=c++11 src/client.c -o client
g++ -std=c++11 src/clientLog.c -o clientLog
mv mem-manager rl_module/
mv client sage rl_module/
mv sage-server-mahimahi clientLog rl_module/
sudo chmod +x rl_module/clientLog
sudo chmod +x rl_module/sage-server-mahimahi
mkdir -p log
mkdir -p dataset
