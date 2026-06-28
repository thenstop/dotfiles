function fish_prompt
    printf '[%s@%s - %s/ ] $ ' $USER (hostname) (basename $PWD)
end
