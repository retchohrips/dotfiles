function webback --argument url
    wget \
        --recursive \
        --no-clobber \
        --page-requisites \
        --html-extension \
        --convert-links \
        --restrict-file-names=windows \
        --domains $url \
        --no-parent \
        $url
end
