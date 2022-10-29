.class final Lcom/nuance/nmdp/speechkit/util/JobRunner$1;
.super Ljava/lang/Object;
.source "JobRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/JobRunner;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$1;->val$instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$1;->val$instance:Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/OemJobRunner;->quit()V

    .line 75
    return-void
.end method
