from python:3.8

RUN apt-get install -y wget
RUN git clone https://github.com/WongKinYiu/yolov7
RUN pip install --upgrade pip
RUN cd yolov7
RUN pip install -r yolov7/requirements.txt
RUN wget https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7.pt

# Location of data directory should be specified
# do we need to make this interactive by asking the user for batch-size, epochs, CPU/GPU usage ?
#python train.py --workers 8 --device "0" --batch-size 10 --data /data/HacklabSoftware/yolov7Train/SafetyFull_yolov7.yaml --img 640 640 --cfg cfg/training/yolov7.yaml --weights yolov7.pt --name yolov7 --hyp data/hyp.scratch.p5.yaml --epochs 50