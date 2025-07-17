# ------------------------------------------------
# Install CARLA 0.9.13
# ------------------------------------------------
WORKDIR /opt
RUN wget -q https://github.com/carla-simulator/carla/archive/refs/tags/0.9.13.tar.gz && \
    tar -xvf 0.9.13.tar.gz && \
    rm 0.9.13.tar.gz && \
    mv carla-0.9.13 CARLA

# Install CARLA Python API
#WORKDIR /opt/CARLA/PythonAPI/carla
#RUN pip3 install dist/carla-0.9.13-py3.7-linux-x86_64.egg

# Install ScenarioRunner requirements
WORKDIR /opt
# Download scenario_runner v0.9.13
RUN wget -q https://github.com/carla-simulator/scenario_runner/archive/refs/tags/v0.9.13.zip && \
    unzip v0.9.13.zip && \
    rm v0.9.13.zip && \
    cd scenario_runner-0.9.13 && \
    pip3 install -r requirements.txt && \
    pip3 install pygame && \ 
    pip3 install carla==0.9.13
    
    

RUN git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git src/ros-bridge
