echo "Run conversion"
cd /mnt/photos/

# Infinte loop
while :
do

    # Find all HEIC images
    find . -iname "*.heic" |
    while read filename
    do
        echo -n "- $filename"

        # If the JPG version already exists, skip it!
        if [ -f "$filename.jpg" ];
        then
            echo " -> Already converted"
        else
            heif-convert -q100 "$filename" "$filename.jpg" > /dev/null
            echo " -> Converted"
        fi
    done

    echo "Sleeping for 12 hours, before checking again..."
    sleep 12h
done