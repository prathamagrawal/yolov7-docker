from python:3.8

RUN apt-get install -y wget
RUN git clone https://github.com/WongKinYiu/yolov7
RUN pip install --upgrade pip
RUN cd yolov7
RUN pip install -r yolov7/requirements.txt
RUN wget https://github.com/WongKinYiu/yolov7/releases/download/v0.1/yolov7.pt




