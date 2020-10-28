# voxceleb2-download
Tools for downloading [The VoxCeleb2 Dataset](http://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox2.html) by VGG.

## Prepare

1. Register to get a password

    If you would like to download the audio-visual dataset, please fill this [form](https://docs.google.com/forms/d/e/1FAIpQLSdQhpq2Be2CktaPhuadUMU7ZDJoQuRlFlzNO45xO-drWQ0AXA/viewform?fbzx=7440236747203254000) to request a password.

2. Put the user/password into [download_vox2_url_list.sh](./download_vox2_url_list.sh).
   
3. chmod
   ```cmd
   chmod +x *.sh
   ```
4. Make sure you have enought disk space: 
   1. >72GBx2 for the audio files. (You need to concat multi-part zips for dev set);
   2. >300GBx2 for the video files. (You need to concat multi-part zips for dev set);
   
## Download

1. audio files
   Download:
   ```cmd
   sudo download_vox2_url_list.sh vox2_urls_audio_files.txt
   ```
   Unzip:
    ```cmd
    cat vox2_dev_aac* > vox2_dev_aac.zip
    
    unzip vox2_dev_aac.zip -d dev
    unzip vox2_test_aac.zip -d test
    ```

2. video files
   Download:
   ```cmd
   sudo download_vox2_url_list.sh vox2_urls_video_files.txt
   ```
   Unzip: 
   ```cmd
   cat vox2_dev_mp4* > vox2_dev_mp4.zip
    
   unzip vox2_dev_mp4.zip -d dev
   unzip vox2_test_mp4.zip -d test
   ```

3. url/timestamp files (optional)
   ```cmd
   sudo download_vox2_url_list.sh vox2_urls_urls_timestamps.txt
   ```

4. metadata files (optional)
   ```cmd
   sudo download_vox2_url_list.sh vox2_urls_metadata.txt
   ```