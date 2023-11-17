package com.hmdp.rebbitmq;

import com.alibaba.fastjson.JSON;
import com.hmdp.config.RabbitMQTopicConfig;
import com.hmdp.entity.VoucherOrder;
import com.hmdp.service.ISeckillVoucherService;
import com.hmdp.service.IVoucherOrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 消息消费者
 */
@Slf4j
@Service
public class MQReceiver {

    @Resource
    IVoucherOrderService voucherOrderService;

    @Resource
    ISeckillVoucherService seckillVoucherService;
    /**
     * 接收秒杀信息并下单
     * @param msg
     */
    @Transactional
    @RabbitListener(queues = RabbitMQTopicConfig.QUEUE)
    public void receiveSeckillMessage(String msg){
        log.info("接收到消息: "+msg);
        VoucherOrder voucherOrder = JSON.parseObject(msg, VoucherOrder.class);

        Long voucherId = voucherOrder.getVoucherId();
        //5.一人一单
        Long userId = voucherOrder.getUserId();
        //5.1查询订单
        int count = voucherOrderService.query().eq("user_id",userId).eq("voucher_id", voucherId).count();
        //5.2判断是否存在
        if(count>0){
            //用户已经购买过了
            log.error("该用户已购买过");
            return ;
        }
        log.info("扣减库存");
        //6.扣减库存
        boolean success = seckillVoucherService
                .update()
                .setSql("stock = stock-1")
                .eq("voucher_id", voucherId)
                .gt("stock",0)//cas乐观锁
                .update();
        if(!success){
            log.error("库存不足");
            return;
        }
        //直接保存订单
        voucherOrderService.save(voucherOrder);
    }

}
