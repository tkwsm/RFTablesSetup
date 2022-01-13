
rails generate model gene               \
                     project_id:integer \
                     seqid:string       \
                     gsource:string     \
                     gtype:string       \
                     gstart:integer     \
                     gend:integer       \
                     gscore:integer     \
                     gstrand:integer    \
                     geneid:integer     ;

rails generate model attribute          \
                     project_id:integer \
                     geneid:string      \
                     gtag:string        \
                     gvalue:string      ;


