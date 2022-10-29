.class public Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;
.super Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/input/swypecorelib/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeSettings"
.end annotation


# instance fields
.field public final mSettings:Lcom/nuance/input/swypecorelib/T9WriteSetting;


# direct methods
.method public constructor <init>(Lcom/nuance/input/swypecorelib/T9WriteSetting;)V
    .registers 3
    .param p1, "settings"    # Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .prologue
    .line 262
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/input/swypecorelib/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 263
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WriteThreadQueue$ChangeSettings;->mSettings:Lcom/nuance/input/swypecorelib/T9WriteSetting;

    .line 264
    return-void
.end method
