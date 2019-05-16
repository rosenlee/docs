# Headline

>  this getting-started start


```
// 供应商更新
    @RequestMapping(value = "/updateSupplier", method = {RequestMethod.POST})
    public BaseResponse<Map<String,Object>> updateSupplier(@RequestBody Map<String,Object> req) {
    	return m_bs.tjUpdateByGuc( req, "updateSupplier" );
    }
```

