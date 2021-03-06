//
//  CPUMonitor.m
//  CodeSample
//
//  Created by sunTongSheng on 2020/4/30.
//  Copyright © 2020 sunTongSheng. All rights reserved.
//

#import "CPUMonitor.h"
#import <mach/mach.h>

#define CPUMONITORRATE 50

@implementation CPUMonitor

//轮询检查多个线程 cpu 情况
+ (void)updateCPU {
    thread_act_array_t threads;
    mach_msg_type_number_t threadCount = 0;
    const task_t thisTask = mach_task_self();
    kern_return_t kr = task_threads(thisTask, &threads, &threadCount);
    if (kr != KERN_SUCCESS) {
        return;
    }
    for (int i = 0; i < threadCount; i++) {
        thread_info_data_t threadInfo;
        thread_basic_info_t threadBaseInfo;
        mach_msg_type_number_t threadInfoCount = THREAD_INFO_MAX;
        if (thread_info((thread_act_t)threads[i], THREAD_BASIC_INFO, (thread_info_t)threadInfo, &threadInfoCount) == KERN_SUCCESS) {
            threadBaseInfo = (thread_basic_info_t)threadInfo;
            if (!(threadBaseInfo->flags & TH_FLAGS_IDLE)) {
                integer_t cpuUsage = threadBaseInfo->cpu_usage / 10;
                if (cpuUsage > CPUMONITORRATE) {
                    //TODO: cup 消耗大于设置值时打印和记录
                }
            }
        }
    }
}

@end
