# < tt > find(: first, *args) </ tt >を便利に使うためのラッパー。
#このメソッドには < tt > find(: first) </ tt >メソッドと
#同じ引数をすべて渡せる
def first(* args)
    if args. any?
        if args. first. kind_ of?( Integer) || (loaded?&& !args. first. kind_ of?( Hash))
                to_ a. first(* args)
            else
                apply_ finder_ options( args. first). first
        end
        else
            find_ first
    end
end