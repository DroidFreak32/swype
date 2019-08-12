.class public interface abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageData;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;
    }
.end annotation


# virtual methods
.method public abstract cancelTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Z
.end method

.method public abstract getMyAddr()Ljava/lang/Object;
.end method

.method public abstract getNumOfVRThreads()I
.end method

.method public abstract getVRAddr()[Ljava/lang/Object;
.end method

.method public abstract scheduleTask(Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;J)V
.end method

.method public abstract send(Ljava/lang/Object;Lcom/nuance/nmsp/client/sdk/common/oem/api/MessageSystem$MessageHandler;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract setSessionId([B)V
.end method

.method public abstract stop()V
.end method
