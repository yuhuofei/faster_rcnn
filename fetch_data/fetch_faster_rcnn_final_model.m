
cur_dir = pwd;
cd(fileparts(mfilename('fullpath')));

try
    fprintf('Downloading faster_rcnn_final_model...\n');
    urlwrite('https://onedrive.live.com/download?resid=4006CBB8476FF777!17291&authkey=!AEH1ks0uYgn-iNY&ithint=file%2crar', ...
        'faster_rcnn_final_model.zip');

    fprintf('Unzipping...\n');
    unzip('faster_rcnn_final_model.zip', '..');

    fprintf('Done.\n');
    system('del faster_rcnn_final_model.zip');
catch
    fprintf('Error in downloading, please try links in README.md https://github.com/ShaoqingRen/faster_rcnn'); 
end

cd(cur_dir);