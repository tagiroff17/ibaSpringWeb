package com.ex.logging;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * Created by Tagirov Alex on 12.05.2017
 */

@Component
@Aspect
public class Logger {

    @Pointcut("execution(* com.ex.service.impl.ContentServiceImpl.addItem(..))")
    private void allMethods() {
    };

    @Around("allMethods()")
    public void watchTime(ProceedingJoinPoint joinpoint) {
        long start = System.currentTimeMillis();
        System.out.println("method begin: " + joinpoint.getSignature().toShortString() + " >>");

        try {
            joinpoint.proceed();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }

        long time = System.currentTimeMillis() - start;
        System.out.println("method end: " + joinpoint.getSignature().toShortString() + ", time=" + time + " ms <<");
    }
}
