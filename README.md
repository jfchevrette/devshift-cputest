## What this test does

This test is used to validate CPU limits on an OpenShift cluster. The test is a very 

and logs any warning that is logged in the OpenShift events.

## How to run it

1. Login to an OpenShift cluster

2. Create and select a test project

3. Create the pod that will be used to run the test

    ```bash
    # ./run.sh <cpulimit> <cpurequest>
    ./run.sh 1000m 1000m
    ```

4. Run the benchmark

    ```bash
    ./benchmark.sh
    ```

5. Stop the pod and delete the resources

    ```bash
    ./down.sh
    ```
