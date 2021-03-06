au BufRead,BufNewFile Capfile,*.thor set ft=ruby
au BufRead,BufNewFile */config/router.rb set ft=ruby.merb_router
au BufRead,BufNewFile *.yml.sample set ft=yaml
au BufRead,BufNewFile */schema/migrations/*.rb set ft=ruby.datamapper_migration
au BufRead,BufNewFile */app/models/*.rb set ft=ruby.datamapper
au BufRead,BufNewFile */app/mailers/*.rb set ft=ruby.merb_mailer
au BufRead,BufNewFile */app/controllers/*.rb set ft=ruby.merb_controller
au BufRead,BufNewFile */app/{mailers/,}views/*.erb set ft=eruby.merb_view
au BufRead,BufNewFile *.haml set ft=haml " http://www.vim.org/scripts/script.php?script_id=1773
au BufRead,BufNewFile *.feature set ft=feature
