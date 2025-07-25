FROM debian:bullseye-20250407-slim
VOLUME /veld/storage/jupyter/
RUN apt update
RUN apt install -y --no-install-recommends python3=3.9.2* python3-pip=20.3.4*
RUN pip install jupyterlab==4.4.2
RUN pip install matplotlib==3.9.4
RUN pip install scikit-learn==1.6.1
RUN pip install psycopg[binary]==3.2.9 
RUN pip install pgvector==0.4.1
RUN pip install kneed==0.8.5
RUN pip install plotly==6.1.1
RUN pip install pandas==2.2.3
RUN pip install jupyterlab-code-formatter==3.0.2
RUN pip install black==25.1.0
RUN pip install isort==6.0.1
RUN pip install umap-learn==0.5.7
RUN pip install ipywidgets==8.1.7
RUN jupyter server extension enable --py jupyterlab_code_formatter
ENV JUPYTER_CONFIG_DIR /veld/storage/jupyter/

RUN pip install jiwer
RUN pip install Levenshtein
RUN pip install openai
RUN pip install pandas
RUN pip install google-cloud-vision
RUN pip install google-generativeai
RUN pip install google-cloud-aiplatform 
RUN pip install anthropic 
RUN pip install requests
RUN pip install plotly

