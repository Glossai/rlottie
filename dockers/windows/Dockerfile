FROM abrarov/msvc-2019

RUN choco install cmake -y
RUN choco install make -y

ARG BASE_DIR=C:/rlottie
RUN powershell mkdir C:/rlottie
COPY . C:/rlottie/
RUN powershell mkdir C:/rlottie/build
WORKDIR C:/rlottie/build

RUN powershell C:/cmake/bin/cmake.exe ..
WORKDIR C:/rlottie
RUN C:/cmake/bin/cmake.exe -DCMAKE_BUILD_TYPE=Release
RUN C:/cmake/bin/cmake.exe --build C:/rlottie/build --target lottie2png --config Release
WORKDIR C:/rlottie/build



ENTRYPOINT ["powershell.exe"]
