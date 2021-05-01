FROM python
WORKDIR /barcode-py
RUN apt update && apt-get install -y libzbar0
COPY . .
RUN pip install -r req.txt
CMD [ "bash" ]
#, "barcode.py" ]