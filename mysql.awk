
{ if ( $1 ~/CREATE/) {print "### "$3 "\n", "| 字段 | 类型 | 是否空 | 注解 | \n | ---- | ---- | ---- | ----| " }
else {

        if($0 ~/NOT/ ){
            n = index($0, "'")
            if(n < 5)
             {
                  n = 100
             }
            notnull = index($0, "NOT")
            print $1 "|", $2 "|",substr($0, notnull, 8)"|", substr($0, n)
                }
        else
        {
            n = index($0, "'")
            if(n < 5)
            {
               n = 100
            }

            null = index($0, "NULL")
            print $1 "|", $2 "|",substr($0, null, 5)"|", substr($0, n)
        }
    }


}
