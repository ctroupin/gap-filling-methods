module GapFilling

using Downloads 

function doi2bib(doi::String)

    # if haskey(DOI2BIB_CACHE,doi)
    #     return DOI2BIB_CACHE[doi] #caching requests
    # end

    headers = ["Accept"=>"application/x-bibtex",
                "charset" => "utf-8"]
    
    
    url = "https://dx.doi.org/" * doi
    out = IOBuffer()
    r = Downloads.request(url, output = out, method = "GET",headers = headers)
    if r.status == 200
        res = String(take!(out))
    else  
        res =  ""
    end

    return res
end

end