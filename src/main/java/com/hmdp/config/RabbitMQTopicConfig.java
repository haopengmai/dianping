package com.hmdp.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class RabbitMQTopicConfig {
    public static final String QUEUE = "seckillQueue";
    public static final String EXCHANGE = "seckillExchange";
    public static final String ROUTINGKEY = "seckill.#";
    @Bean
    public Queue queue(){
        return new Queue(QUEUE);
    }
    @Bean
    public TopicExchange topicExchange(){
        return new TopicExchange(EXCHANGE);
    }
    @Bean
    public Binding binding(){
        return BindingBuilder.bind(queue()).to(topicExchange()).with(ROUTINGKEY);
    }
//    private static final String QUEUE01="queue_topic01";
//    private static final String QUEUE02="queue_topic02";
//    private static final String EXCHANGE = "topicExchange";
//    private static final String ROUTINGKEY01 = "#.queue.#";
//    private static final String ROUTINGKEY02 = "*.queue.#";
//    @Bean
//    public Queue topicqueue01(){
//        return new Queue(QUEUE01);
//    }
//    @Bean
//    public Queue topicqueue02(){
//        return new Queue(QUEUE02);
//    }
//    @Bean
//    public TopicExchange topicExchange(){
//        return new TopicExchange(EXCHANGE);
//    }
//    @Bean
//    public Binding topicbinding01(){
//        return BindingBuilder.bind(topicqueue01()).to(topicExchange()).with(ROUTINGKEY01);
//    }
//    @Bean
//    public Binding topicbinding02(){
//        return BindingBuilder.bind(topicqueue02()).to(topicExchange()).with(ROUTINGKEY02);
//    }
}
