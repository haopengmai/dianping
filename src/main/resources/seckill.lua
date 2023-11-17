-- 1.参数列表
-- 1.1优惠卷id
local voucherId = ARGV[1]
-- 1.2用户id
local userId = ARGV[2]

-- 2.数据key
-- 2.1库存key
local stockKey = 'seckill:stock:' .. voucherId
-- 2.2订单key
local orderKey = 'seckill:order:' .. voucherId

-- 3.脚本业务
-- 3.1判断库存是否充足
if(tonumber(redis.call('get',stockKey)) <= 0)then
    -- 3.2 库存不足 返回1
    return 1
end
--3.2判断用户是否下单
if(redis.call('sismember',orderKey,userId) == 1) then
    -- 3.3存在,说明是重复下单
    return 2
end
-- 3.4扣库存
redis.call('incrby',stockKey,-1)
-- 3.5下单并保存用户
redis.call('sadd',orderKey,userId)
return 0