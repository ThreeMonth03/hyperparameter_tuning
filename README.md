## 介紹
這個repository是用來簡單展示如何透過nni來快速調參。
## 如何從頭復現nni training
1. ```git clone```
2. ```docker-compose up```，記得port和container/image name要做更改，這裡值得注意，別用```docker-compose up -d```，不然experiment log肯定不會存下來。
3. 瀏覽器中打開```localhost:[your_port]```查看nni的結果。

## 如何直接看我的training log
1. ```git clone```
2. 按照nni_search.py內的指示做適當的註解和解除註解，意思大概就是把training的設定註解，觀看experiment log的部分解除註解，也就是解除註解```experiment.view(experiment_id, port=8323, non_blocking=False)```這行。
3. ```docker-compose up```，記得port和container/image name要做更改。
4. 瀏覽器中打開```localhost:[your_port]```查看nni的結果。
