.class public final Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizeResult.java"


# instance fields
.field public final ActionType:Ljava/lang/String;

.field public final DeletedAllUserInformation:I

.field public final FinalCount:I

.field public final ForceUpload:I

.field public final ID:Ljava/lang/String;

.field public final NewChecksum:Ljava/lang/String;

.field public final Status:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "actionType"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "newChecksum"    # Ljava/lang/String;
    .param p5, "finalCount"    # I
    .param p6, "forceUpload"    # I
    .param p7, "deletedAllUserInformation"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->ID:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->ActionType:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "success"

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->Status:Z

    .line 23
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->NewChecksum:Ljava/lang/String;

    .line 24
    iput p5, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->FinalCount:I

    .line 25
    iput p6, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->ForceUpload:I

    .line 26
    iput p7, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;->DeletedAllUserInformation:I

    .line 27
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
