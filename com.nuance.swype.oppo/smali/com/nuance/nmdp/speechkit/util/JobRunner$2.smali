.class final Lcom/nuance/nmdp/speechkit/util/JobRunner$2;
.super Ljava/lang/Object;
.source "JobRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->access$000()Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    move-result-object v1

    const-string v2, "Error running job"

    invoke-static {v1, v2, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
