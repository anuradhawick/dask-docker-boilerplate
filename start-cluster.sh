docker network create dask

docker run --network dask -p 8787:8787 --name dask-scheduler ghcr.io/dask/dask dask-scheduler  # start scheduler

docker run --network dask ghcr.io/dask/dask dask-worker dask-scheduler:8786 # start worker
docker run --network dask ghcr.io/dask/dask dask-worker dask-scheduler:8786 # start worker
docker run --network dask ghcr.io/dask/dask dask-worker dask-scheduler:8786 # start worker

