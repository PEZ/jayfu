FROM gitpod/workspace-full-vnc

USER gitpod

RUN brew install clojure/tools/clojure  && \
    brew install borkdude/brew/babashka
    clojure -Sdeps '{:deps {nrepl/nrepl {:mvn/version,"0.8.3"},cider/cider-nrepl {:mvn/version,"0.26.0"}}}' -P && \
    echo "\n"'# Make JavaFX display windows with visible content'"\n"JAVA_TOOL_OPTIONS=\"\$JAVA_TOOL_OPTIONS -Dsun.java2d.xrender=false\""\n" >> /home/gitpod/.bashrc
