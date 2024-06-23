g++ -pthread src/mem-manager.cc src/flow.cc -o mem-manager
g++ -pthread src/sage.cc src/flow.cc -o sage
g++ src/client.c -o client
g++ src/clientLog.c -o clientLog
mv mem-manager rl_module/
mv client sage rl_module/
mv clientLog rl_module/
sudo chmod +x rl-module/clientLog
sudo chmod +x rl-module/orca-server-mahimahi
mkdir -p log
mkdir -p dataset
