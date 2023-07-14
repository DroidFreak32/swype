.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;
    }
.end annotation


# static fields
.field public static final CALLLOG_CONNECTION_FAILED:S = 0x4s

.field public static final CALLLOG_INVALID_DATA:S = 0x3s

.field public static final CALLLOG_NETWORK_ERROR:S = 0x2s


# virtual methods
.method public abstract send([B)V
.end method
