function __fish_complete_cabal
        if type -f cabal >/dev/null
                set cmd (commandline -poc)
                if test (count $cmd) -gt 1
                        cabal $cmd[2..-1] --list-options
                else
                        cabal --list-options
                end
        end
end
