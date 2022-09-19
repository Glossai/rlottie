@ECHO OFF
:: location of cross-compile\microsoft\Dockerfile  :
cd C:\glossai\rlottie-glossai
mkdir C:\docker_tests\local_dir_to_mount
docker build -f cross-compile\microsoft\Dockerfile --tag rlottie-win .
docker run --name docker_name -it --volume C:\docker_tests\local_dir_to_mount:C:\rlottie\build\shared_dir --rm rlottie-win

docker exec -it -d docker_name powershell.exe copy C:\rlottie\build\lottie2png\release\lottie2png.exe C:\rlottie\build\shared_dir
docker exec -it -d docker_name powershell.exe copy C:\rlottie\build\release\rlottie.dll C:\rlottie\build\shared_dir

:: logic behind: create shared folder between the container and the host- then run from the host copy inside the docker to the shared folder
:: and thats it :-)  (cant copy from container stright to host due to hyper-V error: Error response from daemon: filesystem operations against a running Hyper-V container are not supported
