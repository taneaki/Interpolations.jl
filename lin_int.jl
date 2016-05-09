function lin_int(grid,vals)
    function func(x)
        if x<grid[1]
            return "error"
        end
        if x>grid[n]
            return "error"
        end
        for x=grid[n]
            return vals[n]
        end
        if grid[1]<=x<length(grid)
    z=searchsortedlast(grid,x)
    slope=(vals[z+1]-vals[z])/(grid[z+1]-grid[z])
    y=slope*(x-grid[z])+vals[z]
        return y
        end
    end
    return func
end