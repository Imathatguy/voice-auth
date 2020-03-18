echo "Combining parts back into .zip file"
cat ve.?? > voice_embeddings.zip
echo "Unzipping .zip file"
unzip voice_embeddings.zip
echo "Cleaning up .zip file"
rm voice_embeddings.zip
echo "Moving .csv datafile into place"
mv ./voice_embeddings_original.csv ./../voice_embeddings.csv