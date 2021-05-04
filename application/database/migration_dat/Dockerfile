FROM python
ARG USER_ID
ARG GROUP_ID


WORKDIR /migration
COPY req.txt .
RUN pip install -r req.txt

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user

