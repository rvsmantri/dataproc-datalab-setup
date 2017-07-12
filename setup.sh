#get gcloud utilities
curl https://sdk.cloud.google.com | bash
#restart shell and run
exec -l $SHELL
#Initialize gcloud
gcloud init
#create dataproc-datalab cluster on gcp
gcloud dataproc clusters create cluster-1 --zone us-west1-a --master-machine-type n1-standard-4 --master-boot-disk-size 500 --num-workers 2 --worker-machine-type n1-standard-4 --worker-boot-disk-size 500 --image-version preview --scopes 'https://www.googleapis.com/auth/cloud-platform' --project polaris-dev --initialization-actions 'gs://dataproc-datalab-setup/datalab.sh' --initialization-actions gs://datalab-dataproc/datalab.sh  --scopes cloud-platform


#delete cluster on gcp
gcloud dataproc clusters delete cluster-1
