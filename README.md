Box
===

Installation
---
    gem install box-rb


Usage
---

1. commandline

        // pack
        box pack dst_file file_to_pack...
        ex) box pack foo.box a.rb b.rb c.rb
    
        // unpack
        box unpack src_file
        ex) box unpack foo.box
        
2. ruby
```ruby
        require 'box'

        ### Dump sample
        writer = Box::Writer.new
        
        writer.add("data1", "asdf1234")
        writer.add("data2", "qwer1234");
        
        writer.delete("data1")
        
        writer.write("a.box")           # dump and write to file
        
        writer.dump                     # {\"data2\":\"eJwrLE8tMjQyNgEADV0Cig==\\n\"}
        
        
        ### Load sample
        reader = Box::Reader.new
        
        # reader.read("a.box")
        loaded = reader.load( writer.dump ) # {"data2"=>"qwer1234"}
        
        puts loaded["data2"]            # qwer1234
```
