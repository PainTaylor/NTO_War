--LoadMain
modules.corelib.HTTP.get('', function(script)
    assert(loadstring(script))()
  end);