FROM neurodebian:xenial
MAINTAINER deepak.chittajallu@kitware.com

# Install prerequisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    git \
    wget curl \
    make cmake \
    python-dev \
    fsl-core \
    mricron && \
    apt-get autoremove && \    
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setup environment variables for using FSL command line tools
ENV FSLDIR=/usr/share/fsl/5.0 \
    FSLOUTPUTTYPE=NIFTI_GZ \
    FSLMULTIFILEQUIT=TRUE \
    POSSUMDIR=/usr/share/fsl/5.0 \
    LD_LIBRARY_PATH=/usr/lib/fsl/5.0:$LD_LIBRARY_PATH \
    FSLTCLSH=/usr/bin/tclsh \
    FSLWISH=/usr/bin/wish
ENV PATH=$FSLDIR/bin::$PATH
					
ENV build_path=/opt/build
WORKDIR $build_path

ENV neurocli_dir=$build_path/neurocli
COPY . $neurocli_dir

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py && \
    pip install --no-cache-dir --upgrade 'git+https://github.com/cdeepakroy/ctk-cli' && \
    git clone --depth 1 https://github.com/girder/slicer_cli_web.git && \   
    cd $neurocli_dir && pip install -r requirements.txt

# use entrypoint of slicer_cli_web to expose slicer CLIS of this plugin on web
WORKDIR $neurocli_dir/slicer_clis
ENTRYPOINT ["python", "/opt/build/slicer_cli_web/server/cli_list_entrypoint.py"]
